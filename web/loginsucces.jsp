<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.Cookie" %>
<%
String url="jdbc:mysql://localhost:3306/college";
String username="root";
String password="";
String uname=request.getParameter("uname");
String pswd=request.getParameter("pswd");
int flag=0;
try{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,username,password);
Statement stt=con.createStatement();
ResultSet ress=stt.executeQuery("select * from account");
while(ress.next())
{
    if(ress.getString("uname").equals(uname) && ress.getString("password").equals(pswd))
    {
          flag=1;
    }
}
}
catch(Exception ae)
{
    out.println(ae);
}
if(flag==1){
Cookie myCookie = new Cookie("username", uname);
myCookie.setMaxAge(24 * 60 * 60);
response.addCookie(myCookie);
%>
<script>
    window.alert('Login Successfull');
    window.location.href='index.jsp';
</script>
<%
}
else
{
%>
<script>
    window.alert('Wrong Credentials');
    window.location.href='login.jsp';
</script>

<%
}
%>