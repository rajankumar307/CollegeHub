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
try{
                
Class.forName("oracle.jdbc.driver.OracleDriver");
        
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mightyshubham");
PreparedStatement ps=conn.prepareStatement("DELETE from user_registration WHERE username=?");               
ps.setString(1,uname);

                
int m=ps.executeUpdate();
                
if(m>0)
                
{
                    
out.println("User Deleted"); 
%>
<jsp:include page="AdminHome.html"></jsp:include>
<%
                     
                
}else{
                
out.print("Error! Again enter the UserName");
%>
                    
<jsp:include page="RemoveUser.jsp"></jsp:include>
                 
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
