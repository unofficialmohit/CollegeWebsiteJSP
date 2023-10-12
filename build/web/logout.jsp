<%@ page import="javax.servlet.http.Cookie" %>
<%
Cookie[] cookies = request.getCookies();
if (cookies != null) {
    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("username")) {
            cookie.setMaxAge(0);
            response.addCookie(cookie);
            break;
        }
    }
}

response.sendRedirect("index.jsp");
%>
