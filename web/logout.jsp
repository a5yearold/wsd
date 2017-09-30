<%-- 
    Document   : logout
    Created on : 29-Sep-2017, 19:30:41
    Author     : Luo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body bgcolor="red">
        <% 
            session.invalidate();
            %>
            <P> You have been logged out. Click <a href="index.jsp">here</a> to return to the main page </p>
                
    </body>
</html>