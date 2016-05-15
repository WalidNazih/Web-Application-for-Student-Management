$(document).ready(function() {
		$("#all").click(function() {
			var cat = 4;
			$.get('ImageAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$("#photo").click(function() {
			var cat = 2;
			$.get('ImageAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$("#video").click(function() {
			var cat = 3;
			$.get('VideoAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$("#web").click(function() {
			var cat = 1;
			$.get('VideoAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$(".lessonDown").click(function() {
			var cat = 1;
			var url = $(this).attr('href');
			$.get('DownloadAjax', {
				cat : cat, url:url
			}, function(responseText) {
				
			});
		});
		
		$('#typeSelect').on('change', function() {
			var value = this.value;
			$.get('DeleteAjax', {
				value : value
			}, function(responseText) {
				$("#itemsDiv").html(responseText);
			});
		});
		
		$(".like").click(function() {
			var imgurl = $(this).find('img').attr('src');
			var obj = $(this);
			var boli;
			if(obj.find('i').hasClass("fa-heart-o")) boli = 1;
			else boli = 0;
			$.get('LikeAjax', {
				imgurl : imgurl, boli : boli
			}, function(responseText) {
				obj.siblings('#likecount').text(responseText + " likes")
				obj.find('i').toggleClass("fa-heart-o");
				obj.find('i').toggleClass("fa-heart");
			});
		});
	});