<!DOCTYPE html>
<html>
<head>
    <title>Contact Us - College Website</title>
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
     <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Syllabus</a></li>
            <li><a href="#">Fees Payment</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul>
    </nav>
    <%
    } else {
    %>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Syllabus</a></li>
            <li><a href="#">Fees Payment</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
    </nav>
    <%
    }
    %>
    <div class="login">
        <h2>Contact Us</h2>
        <p>If you have any questions or inquiries, please use the form below to get in touch with us:</p>
        <form action="contactsucces.jsp" method="POST">
            Name:<br>
            <input type="text" name="name" placeholder="Enter Name" required><br>
            Email:<br>
            <input type="text" name="email" placeholder="Enter Email" required><br>
            Phone:<br>
            <input type="number" name="phone" placeholder="Enter Phone" required><br>
            Message:<br>
            <textarea name="message" placeholder="Enter Message" rows="4"></textarea><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
