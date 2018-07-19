<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%    
      
      try{
    	  String fname = request.getParameter("filename");  
          String filepath = "D:/studyhub";
          
          if(true){
        	  response.setContentType("APPLICATION/OCTET-STREAM");   
              response.setHeader("Content-Disposition","attachment; filename=\"" + fname + "\"");   
              
              java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + fname);  
                        
              int i;   
              while ((i=fileInputStream.read()) != -1) {  
                out.write(i);   
              }   
              fileInputStream.close();   
             }
          else
          {
        	  out.println("Invalid File name");
        	  RequestDispatcher rd=request.getRequestDispatcher("news.html");
        	  rd.include(request, response);
          }
      }
      
      
      catch(Exception e){
    	     System.out.print(e);
    	 }
      
 %>
 </body>
</html>