<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.oracle.oradocs.folders.FileVO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updated Files</title>
</head>
<body>
<h1>Updated Files List</h1>
<table>
<thead>
	<tr>
		<th>Folder Name</th>
		<th>Owned By</th>
	</tr>
</thead>

<%
List<FileVO> files = (List<FileVO>) request.getAttribute("updatedFiles");

for(FileVO updatedFile : files) {
%>


<tr>
<td><%= updatedFile.getFile_name() %></td>
<td><%= updatedFile.getDisplay_name() %></td>
<%} %>
</tr>
</table>
</body>
</html>