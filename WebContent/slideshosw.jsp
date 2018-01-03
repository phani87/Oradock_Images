<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.oracle.oradocs.folders.FileVO"%>

<%
	List<String> links = (List<String>) request.getAttribute("previewLks");
%>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/styleimage.css">
<link rel="stylesheet" href="resources/css/style.css">
<style>
<!-- .carousel-inner>.item>img {
	width: 100%;
	/* height: 770px; */
}
</style> -->
</head>
<body>
<body>
	<div class="backimg">
		<div class="row">
			<div class="col-sm-6 col-centered">
				<div id="myCarousel" class="carousel slide container"
					data-ride="carousel"
					style="display: flex; justify-content: center;">
					<!-- Indicators -->
					<%-- <ol class="carousel-indicators">
											<li data-target="#myCarousel" data-slide-to="0"
												class="active"></li>
											<%
													for (int i = 1; i < links.size(); i++) {
												%>
											<li data-target="#myCarousel" data-slide-to="<%=i%>"></li>
											<%
													}
												%>
										</ol> --%>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">

						<%
							for (int i = 0; i < links.size(); i++) {
								if (i == 0) {
						%>
						<div class="item active">
							<img class="img-responsive center-block" src="<%=links.get(i)%>"
								alt="Image" height="500" width="650">
							<div class="carousel-caption">
								<%-- <h3><%=links.get(i)%></h3>
													<p><%=links.get(i)%></p> --%>
							</div>
						</div>
						<%
							} else {
						%>
						<div class="item">
							<img class="img-responsive center-block" src="<%=links.get(i)%>"
								alt="Image" height="500" width="650">
							<div class="carousel-caption">
								<%-- 	<h3><%=links.get(i)%></h3>
													<p><%=links.get(i)%></p> --%>
							</div>
						</div>
						<%
							}
						%>

						<%
							}
						%>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- 	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js'></script> -->
</body>

</html>
