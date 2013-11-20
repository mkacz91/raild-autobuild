// Make clicking on a table row redirect to associated link

$(document).ready(function() {
	
	$("tr[data-link]").click(function() {
		window.location = $(this).data("link")
	});

});