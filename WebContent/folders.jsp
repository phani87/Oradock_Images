<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>
 -->


<link rel='stylesheet prefetch'
	href='https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.css'>

<link rel="stylesheet" href="resources/css/style.css">
<title>Update Expiration date</title>
</head>
<body>
	<div class="backimg">
		<div class="container">
			<div class="row">
				<div class="Absolute-Center is-Responsive">
					<div id="logo-container"></div>
					<div class="col-sm-12 col-md-10 col-md-offset-1">
						<form action="ImageServlet" name="frm" method="get" id=folderForm  role="form" >
							<div class="form-group input-group">
							<div class="form-group">
									<input type="hidden" name="imagedownload">
									<button type="button" id="myButton" class="btn btn-default btn-sm" value="community" name="community" onclick="javascript:MyFunction(this)">
										<span class="glyphicon glyphicon-folder-close" id="imagedownload"></span> Community
									</button>
									<button type="button" id="myButton" class="btn btn-default btn-sm" value="customers" name="customers" onclick="javascript:MyFunction(this)">
										<span class="glyphicon glyphicon-folder-close"></span> Customers
									</button>
									<button type="button" id="myButton" class="btn btn-default btn-sm" value="people" name="people" onclick="javascript:MyFunction(this)" >
										<span class="glyphicon glyphicon-folder-close"></span> People
									</button>
									<!-- <input type="submit" class="btn btn-primary" value="Community"
									style="width: -webkit-fill-available;" name="imagedownload">
								<input type="submit" class="btn btn-primary" value="Customer"
									style="width: -webkit-fill-available;" name="imagedownload">
								<input type="submit" class="btn btn-primary" value="People"
									style="width: -webkit-fill-available;" name="imagedownload">
 -->
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