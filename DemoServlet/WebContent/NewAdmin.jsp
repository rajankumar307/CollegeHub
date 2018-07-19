<%-- Document   : UserReg2
    Created on : Jun 30, 2018, 12:13:24 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
   
    
<body>
        
<%
            
String uname=request.getParameter("username");
String pwd=request.getParameter("password");
try{
                
Class.forName("oracle.jdbc.driver.OracleDriver");
        
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mightyshubham");
PreparedStatement ps=conn.prepareStatement("insert into admin_table values(?,?)");               
ps.setString(1,uname);
ps.setString(2,pwd);

                
int m=ps.executeUpdate();
                
if(m>0)
                
{
                    
out.println("Admin Added" ); 
%>
<jsp:include page="AdminHome.html"></jsp:include>
<%
                     
                
}else{
                
out.print("Error! Again enter the Username and Password");
%>
                    
<jsp:include page="AddAdmin.jsp"></jsp:include>
                 
<% 
}
                
conn.close();
                
                
                
 
}catch(Exception e)
{
                
System.out.print(e);
            
}

%>
    
</body>

</html>
