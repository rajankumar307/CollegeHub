<%-- 
    Document   : hello
    Created on : 5 Jul, 2018, 11:14:56 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
MultipartRequest m = new MultipartRequest(request, "D:/Studyhub",50*1024*1024);  
out.print("<b><i>Successfully uploaded</i></b>");  

  
%>  
<br>
<br>
<a href="AdminHome.html"><b><i>To Upload More Documents</i></b></a>
    </body>
</html>
