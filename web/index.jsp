<!DOCTYPE html>
<html>
<head>
    <title>School Website</title>
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
        String uname = "";
        boolean usernameCookieExists = false; // Initialize a flag to check if the cookie exists

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) { // Check if the cookie is the "username" cookie
                    usernameCookieExists = true;
                    uname = cookie.getValue();
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
        <script>
            window.alert('Welcome <%=uname %>');
        </script>
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

<img src="abc.png" alt="School Banner" class="banner-image" style="width: 100%; height: 100vh;">


    <div class="content">
        <h1>Welcome to Our School</h1>
        <p>We provide quality education for students of all ages. Our dedicated staff and state-of-the-art facilities create an excellent learning environment.</p>
        
        <h2>Our Vision</h2>
        <p>To empower the next generation with knowledge and skills to succeed in a rapidly changing world.</p>

        <div>
            <img src="abc.png" alt="Image 1" class="image">
            
            <img src="abc.png" alt="Image 2" class="image">
            
            <img src="abc.png" alt="Image 3" class="image">
        </div>
    </div>
</body>
</html>
