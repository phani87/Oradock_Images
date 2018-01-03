<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.oracle.oradocs.images.*"%>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/styleimage.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
<body>
	<div class="backimg">
		<div class="container">
			<div class="row">
				<div class="Absolute-Center is-Responsive">
					<div id="logo-container"></div>
					<div class="col-sm-12 col-md-10 col-md-offset-1">
						<form action="ImageServlet" name="frm" method="get" id=folderForm
							role="form">
							<div class="form-group input-group">
								<div class="form-group">
									<input type="hidden" name="imagedownload">
									<button type="button" id="myButton"
										class="btn btn-default btn-sm" value="community"
										name="community" onclick="javascript:MyFunction(this)">
										<span class="glyphicon glyphicon-folder-close"
											id="imagedownload"></span> Community
									</button>
									<button type="button" id="myButton"
										class="btn btn-default btn-sm" value="customers"
										name="customers" onclick="javascript:MyFunction(this)">
										<span class="glyphicon glyphicon-folder-close"></span>
										Customers
									</button>
									<button type="button" id="myButton"
										class="btn btn-default btn-sm" value="people" name="people"
										onclick="javascript:MyFunction(this)">
										<span class="glyphicon glyphicon-folder-close"></span> People
									</button>

									<%
										List<ImageVO> files = (List<ImageVO>) request.getAttribute("files");
										String folder = (String) request.getAttribute("folder");
										System.out.println(folder);
									%>
										<div id="myCarousel" class="carousel slide"
											data-ride="carousel">
											<!-- Indicators -->
											<ol class="carousel-indicators">
												<li data-target="#myCarousel" data-slide-to="0"
													class="active"></li>
												<%
													for (int i = 1; i < files.size(); i++) {
												%>
												<li data-target="#myCarousel" data-slide-to="<%=i%>"></li>
												<%
													}
												%>
											</ol>

											<!-- Wrapper for slides -->
											<div class="carousel-inner">

												<%
													for (int i = 0; i < files.size(); i++) {
														if (i == 0) {
												%>
												<div class="item active">
													<img
														src="downloadeImages/<%=folder%>/<%=files.get(i).getImage_name()%>"
														alt="<%=files.get(i).getImage_name()%>"
														>
													<div class="carousel-caption">
														<h3><%=files.get(i).getFolder_name()%></h3>
														<p><%=files.get(i).getImage_name()%></p>
													</div>
												</div>
												<%
													} else {
												%>
												<div class="item">
													<img
														src="downloadeImages/<%=folder%>/<%=files.get(i).getImage_name()%>"
														alt="<%=files.get(i).getImage_name()%>"
														>
													<div class="carousel-caption">
														<h3><%=files.get(i).getFolder_name()%></h3>
														<p><%=files.get(i).getImage_name()%></p>
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
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
        MyFunction = function(e){
        	{document.frm.imagedownload.value=e.value;
        	//alert(document.frm.imagedownload.value);
        	document.frm.submit();}
        }
    </script>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js'></script>
</body>

</html>
