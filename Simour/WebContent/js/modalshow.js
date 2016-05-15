
		$('.pop').on('click', function() {
			$('.imagepreview').attr('src', $(this).find('img').attr('src'));
			$('#imagemodal').modal('show');
		});
		$('.vidpop').on('click', function() {
			alert("clicked");
			$('.videopreview').attr('src', $(this).find('img').attr('src'));
			$('#videomodal').modal('show');
		});
		$('#videomodal').on('hide.bs.modal', function(e) {    
		    var $if = $(e.delegateTarget).find('iframe');
		    var src = $if.attr("src");
		    $if.attr("src", '/empty.jsp');
		    
		});