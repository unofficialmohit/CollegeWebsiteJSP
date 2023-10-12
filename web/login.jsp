<!DOCTYPE html>
<html>
    <head>
        <title>College Website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
         <div class="dav-banner">
        <h1>DAV COLLEGE</h1>
    </div>
        <%
            Cookie[] cookies = request.getCookies(); // Get an array of all cookies

            boolean usernameCookieExists = false; // Initialize a flag to check if the cookie exists

            if (cookies != null) {
            for (Cookie cookie : cookies) {
              if (cookie.getName().equals("username")) { // Check if the cookie is the "username" cookie
            usernameCookieExists = true;
            break; // Exit the loop since we found the cookie
        }
        }
        }
        if (usernameCookieExists) {
        %>
        <script>
    window.alert('You are Already Logged in');
    window.location.href='index.jsp';
    </script>   
        <%}
        else
{
%>
     <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Syllabus</a></li>
                <li><a href="#">Fees Payment</a></li>
                <li><a href="sign.jsp">Sign up</a></li>
            </ul>
        </nav>    
        
        <%
}%>
<div class="login">
            <form action="loginsucces.jsp" method="POST">
                Username<br><input type="text" name="uname" placeholder="Enter Username" required><br>
                Password<br><input type="password" name="pswd" placeholder="Enter Password" required><br><br><br>
                <input type="submit" value="Login">
                
                
            </form>
            
        </div>
    </body>
</html>