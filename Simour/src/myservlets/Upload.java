package myservlets;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.filechooser.FileSystemView;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.jcodec.api.awt.FrameGrab;

import beans.Niveau;
import beans.Option;
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
        String button = null;	
        try {
            // parses the request's content to extract file data
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
            	String title = null, desc= null, fileName= null, classe=null;
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
                        }else if(item.getFieldName().equals("lessonbtn")){
                        	button = "lesson";
                        }else if(item.getFieldName().equals("classSelect")){
                        	classe= item.getString();
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
                DAO dao = new DAO("simour","root","");
                if(fileName.endsWith(".jpg") || fileName.endsWith(".png") || fileName.endsWith(".gif")){
                	dao.insertImage("uploads/"+fileName, title, desc, 2);
                }else if(fileName.endsWith(".avi") || fileName.endsWith(".mp4") || fileName.endsWith(".wmv")){
                	System.out.println(desc);
                	dao.insertVideo("uploads/"+fileName, title, null, 3);
                }else if(fileName.endsWith(".doc") || fileName.endsWith(".docx") || fileName.endsWith(".pdf")){
                	String ext = null;
                	if(fileName.endsWith(".doc") || fileName.endsWith(".docx")) ext = "word";
                	else ext = "pdf";
                	System.out.println(ext+"");
                	if(button.equals("book")){
                		dao.insertBook("uploads/"+fileName, title, desc, "images/"+ext+".png");
                		System.out.println("book "+ ext);
                	}else if(button.equals("article")){
                		dao.insertArticle("uploads/"+fileName, title, desc, "images/"+ext+".png");
                		System.out.println("book "+ ext);
                	}else if(button.equals("chapter")){
                		dao.insertChapters("uploads/"+fileName, title, desc, "images/"+ext+".png");
                		System.out.println("chapter");
                	}else if(button.equals("lesson")){
                		System.out.println("lesson");
                		HttpSession session = request.getSession();
                		
                		String niv = classe.split("\\(")[1].substring(0,classe.split("\\(")[1].length()-1);
                		String op = classe.split("\\(")[0].substring(0,classe.split("\\(")[0].length()-1);
                		int nivId = 0, opId = 0;
                		ArrayList<Niveau> nivL = (ArrayList<Niveau>) session.getAttribute("nivL");
                		ArrayList<Option> opL = (ArrayList<Option>) session.getAttribute("opL");
                		System.out.println(opL.get(0).getName());
                		for(Niveau n : nivL) if(n.getName().equals(niv)) nivId = n.getId();
                		for(Option o : opL) if(o.getName().equals(op)) opId = o.getId();
                		
                		ResultSet rs = dao.getClassByOption(opId, nivId);
                		rs.next();
                		dao.insertLesson("uploads/"+fileName, title, "images/"+ext+".png", rs.getInt(1));
                		System.out.println(ext);
                	}
                }
                
                
            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "There was an error: " + ex.getMessage());
           ex.printStackTrace();
        }
        // redirects client to message page
        
        if(button.equals("book") || button.equals("article") || button.equals("chapter")){
        	getServletContext().getRequestDispatcher("/research.jsp").forward(
                    request, response);
        }else if(button.equals("lesson")){
        	getServletContext().getRequestDispatcher("/pedagogy.jsp").forward(
                    request, response);
        }
        else{
        	getServletContext().getRequestDispatcher("/gallery.jsp").forward(
                    request, response);
        }
    }
}

