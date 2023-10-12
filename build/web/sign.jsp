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
          a      <li><a href="index.jsp">Home</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Syllabus</a></li>
                <li><a href="#">Fees Payment</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>    
        
        <%
}%>
<div class="login">
    <form action="signsucces.jsp" method="POST">
        Username<br>
        <input type="text" name="uname" placeholder="Enter Username" required><br>
        Phone<br>
        <input type="number" name="phone" placeholder="Enter Phone" required><br>
        Password<br>
        <input type="text" name="password" placeholder="Enter Password" required><br>
        Fathername<br>
        <input type="text" name="fname" placeholder="Enter FatherName" required><br>
        Email<br>
        <input type="text" name="email" placeholder="Enter Email" required><br><br>
        Gender &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
        Male<input type="radio" name="gender" value="Male" checked>
        Female<input type="radio" name="gender" value="Female"><br><br><br><br>
        <input type="submit" value="Sign Up">
        
    </form>
    
    
</div>
    </body>
</html>