<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>



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
						<form action="AuthServlet" method="get" id="loginForm" role="form">
							<div class="form-group input-group">
								<textarea rows="5" cols="15" name="token" class="form-control"
									id="token"
									placeholder="Enter token, if you do not have token, then click to generate token and copy 'tokenValue'"
									class="form-control" required></textarea>
								<span class="input-group-addon btn btn-primary"
									onclick='javascript:window.open("https://oradocs-corp.documents.us2.oraclecloud.com/documents/web?IdcService=GET_OAUTH_TOKEN", "_blank", "scrollbars=1,resizable=1,height=300,width=450");'>Generate
									Token</span>
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-folder-close"></i></span> <input
									type="text" name="master_folder" id="folderID"
									class="form-control" placeholder="Enter Folder ID" required>
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn-primary" value="Update"
									style="width: -webkit-fill-available;" name="Update">

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js'></script>
</body>
</html>