<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.Cookie" %>
<%
String url="jdbc:mysql://localhost:3306/college";
String username="root";
String password="";
String uname=request.getParameter("name");
String msg=request.getParameter("message");
String phone=request.getParameter("phone");
String email=request.getParameter("email");

try{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,username,password);
Statement stt=con.createStatement();
int rowsAffected = stt.executeUpdate("insert into contact values('"+uname+"','"+phone+"','"+email+"','"+msg+"')");

            if (rowsAffected > 0) {
                %>
<script>
    window.alert('Our Team will reach Back to you Soon.');
    window.location.href='index.jsp';
</script>
<%
                
            } else {
                %>

<script>
    window.alert('Something is wrong');
    window.location.href='contact.jsp';
</script>
<%
            }
}
catch(Exception ae)
{
    out.println(ae);
}


%>