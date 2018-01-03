<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.oracle.oradocs.folders.FileVO"%>


<html>
	<head>
		<!-- 
			This carousel example is created with jQuery and the carouFredSel-plugin.
			http://jquery.com
			http://caroufredsel.dev7studios.com
		-->

		<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
		<meta name="description" value="This rounded one images slider has paginational thumbnails that are carfully placed and animated around the border of the big image, creating a pretty unique carousel." />
		<meta name="keywords" value="round, borderradius, carousel, circel, slider" />
		<title>Digital Wall</title>

		<script src="resources/js/jquery.min.js" type="text/javascript"></script>
		<script src="resources/js/jquery.carouFredSel-6.0.4-packed.js" type="text/javascript"></script>
		<script src="resources/js/carousal.js" type="text/javascript"></script>
		
		<link rel="stylesheet" href="resources/css/caoursal.css">
		
		
	</head>
						<%
						List<String> links = (List<String>) request.getAttribute("previewLks");
						System.out.println(links.size());
							
						%>
	
	<body>
	
	<div id="wrapper">
		<h1 align="center">DIGITAL WALL</h1>
		<div id="carousel">
			<%
				for (int i = 0; i < links.size(); i++) {
			%>
			<img src="<%=links.get(i)%>" width="600" height="400" />
			<%
				}
			%>
		</div>
	</div>
</body>
</html>