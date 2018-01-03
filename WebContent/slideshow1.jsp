<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reston Hub Life</title>
<!-- jQuery library (served from Google) -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
</head>
<body>
<script src="resources/js/directorySlider.js"></script>
<div class="directorySlider"></div>
<script type="text/javascript">
$(document).ready(function(){
$('.directorySlider').directorySlider({
	directory: 'downloadeImages/',
	extension: 'jpg',
	animation: 'fade',
	numslides: '3'
});

});
</script>
</body>
</html>