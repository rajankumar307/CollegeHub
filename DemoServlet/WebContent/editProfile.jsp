<%-- 
    Document   : ViewUser
    Created on : Jun 30, 2018, 2:52:00 PM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <h1>User Details</h1><form action="editProfile2.jsp">
        <%
             try{
        String un=request.getParameter("username");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mightyshubham");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from user_registration where username='"+un+"'");
        %>
        <table border="2">
        <% if(rs.next()){ %>
        <tr><td>UserName:</td><td><input type="text" value="<%= rs.getString(1) %>" name="un" readonly></td></tr>
        <tr><td>Password:</td><td><input type="text" value="<%= rs.getString(2) %>" name="password"></td></tr>
        <tr><td>Name:</td><td><input type="text" value="<%= rs.getString(3) %>" name="name"></td></tr>
        <tr>    <td>rollno:</td><td><input type="text" value="<%= rs.getString(4) %>" name="rollno"></td></tr>
		<tr>    <td>email:</td><td><input type="text" value="<%= rs.getString(5) %>" name="email"></td></tr>
		<tr>    <td>mobileno:</td><td><input type="text" value="<%= rs.getString(6) %>" name="mobileno"></td></tr>
        <tr><td><input type="submit" value="Update"></td><td><input type="reset"></td></tr>
        <%}
        %></table>
        <%
        con.close();
             }catch(Exception e){
                System.out.print(e);
            }
            %>
        </form> </center></body>
</html>
