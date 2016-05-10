package myservlets;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.filechooser.FileSystemView;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.jcodec.api.awt.FrameGrab;

import classes.DAO;
 
/**
 * A Java servlet that handles file upload from client.
 *
 * @author www.codejava.net
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
    private static final long serialVersionUID = 1L;
     
    // location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "uploads";
 
    // upload settings
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 100; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
 
    /**
     * Upon receiving file upload submission, parses the request to read
     * upload data and saves the file on disk.
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // checks if the request actually contains upload file
        if (!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            PrintWriter writer = response.getWriter();
            writer.println("Error: Form must has enctype=multipart/form-data.");
            writer.flush();
            return;
        }
 
        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // sets memory threshold - beyond which files are stored in disk
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // sets temporary location to store files
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
 
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        // sets maximum size of upload file
        upload.setFileSizeMax(MAX_FILE_SIZE);
         
        // sets maximum size of request (include file + form data)
        upload.setSizeMax(MAX_REQUEST_SIZE);

        // constructs the directory path to store upload file
        // this path is relative to application's directory
        String uploadPath = getServletContext().getRealPath("")
                 + UPLOAD_DIRECTORY;
         
        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
 
        try {
            // parses the request's content to extract file data
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
            	String title = null, desc= null, fileName= null, button = null;
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields
                    if (item.isFormField()) {
                        if(item.getFieldName().equals("title")){
                        	title = item.getString();
                        }else if(item.getFieldName().equals("desc")){
                        	desc = item.getString();
                        }else if(item.getFieldName().equals("bookbtn")){
                        	button = "book";
                        }else if(item.getFieldName().equals("articlebtn")){
                        	button = "article";
                        }else if(item.getFieldName().equals("chapterbtn")){
                        	button = "chapter";
                        }
                    }else{
                    	fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);
                        
                        // saves the file on disk
                        item.write(storeFile);
                        request.setAttribute("message",
                            "Upload has been done successfully!");
                    }
                }
                Icon ico = FileSystemView.getFileSystemView().getSystemIcon(new File(fileName));
                Image thumb = ((ImageIcon) ico).getImage();
                ImageIO.write((BufferedImage) thumb, "png", new File(uploadPath + File.separator + "test.png"));
                DAO dao = new DAO("simour","root","");
                if(fileName.endsWith(".jpg") || fileName.endsWith(".png") || fileName.endsWith(".gif")){
                	dao.insertImage("uploads/"+fileName, title, desc, 2);
                }else if(fileName.endsWith(".avi") || fileName.endsWith(".mp4") || fileName.endsWith(".wmv")){
                	System.out.println(desc);
                	dao.insertVideo("uploads/"+fileName, title, 3);
                }else if(fileName.endsWith(".doc") || fileName.endsWith(".docx") || fileName.endsWith(".txt") || fileName.endsWith(".pdf")){
                	System.out.println(button);
                	if(button.equals("book")){
                		dao.insertBook("uploads/"+fileName, title, desc);
                	}else if(button.equals("article")){
                		dao.insertArticle("uploads/"+fileName, title, desc);
                	}else if(button.equals("chapter")){
                		dao.insertChapters("uploads/"+fileName, title, desc);
                	}
                }
                
                
            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "There was an error: " + ex.getMessage());
            System.out.println(ex.getMessage());
        }
        // redirects client to message page
        getServletContext().getRequestDispatcher("/gallery.jsp").forward(
                request, response);
    }
}

