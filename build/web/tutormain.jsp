<%-- 
    Document   : tutormain
    Created on : 2017. 9. 15, 오후 6:58:31
    Author     : deocr
--%>
<%@page import="uts.wsd.Tutor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    Tutor tutor = (Tutor)session.getAttribute("tutor");
    String email = tutor.getEmail();
    String name = tutor.getName();
%>
        <h1>Tutor Main Page</h1>
        <p>Hello <%= name %></p>
    </body>
</html>
