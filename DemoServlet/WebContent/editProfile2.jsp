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
            
String uname=request.getParameter("un");
            
String pwd=request.getParameter("password");
String name=request.getParameter("name");

String rno=request.getParameter("rollno");
String email=request.getParameter("email");

String mno=request.getParameter("mobileno");
            
            
            
try{
                
                
Class.forName("oracle.jdbc.driver.OracleDriver");
        
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mightyshubham");
PreparedStatement ps=conn.prepareStatement("UPDATE user_registration SET password=?, name=?, rollno=?, email=?, mobileno=? WHERE username=?");               
ps.setString(1, pwd);
ps.setString(2,name);
ps.setString(3, rno);
ps.setString(4,email);
ps.setString(5, mno);
ps.setString(6,uname);

                
int m=ps.executeUpdate();
                
if(m>0)
                
{
                    
out.println("Succesfully Updated!"); 
%>
<jsp:include page="EditUser.jsp"></jsp:include>
<%
                     
                
}else{
                
out.print("Error! Again enter the UserName");
%>
                    
<jsp:include page="EditUser.jsp"></jsp:include>
                 
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
