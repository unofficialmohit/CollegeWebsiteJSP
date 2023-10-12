<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.Cookie" %>
<%
String url="jdbc:mysql://localhost:3306/college";
String username="root";
String password="";
String uname=request.getParameter("uname");
String pswd=request.getParameter("password");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String fname=request.getParameter("fname");
String email=request.getParameter("email");

try{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,username,password);
Statement stt=con.createStatement();
int rowsAffected = stt.executeUpdate("insert into account values('"+phone+"','"+uname+"','"+pswd+"','"+gender+"','"+fname+"','"+email+"')");

            if (rowsAffected > 0) {
                %>
<script>
    window.alert('Account Created Successfully');
    window.location.href='login.jsp';
</script>
<%
                
            } else {
                %>

<script>
    window.alert('Account Not Created');
    window.location.href='login.jsp';
</script>
<%
            }
}
catch(Exception ae)
{
    out.println(ae);
}


%>