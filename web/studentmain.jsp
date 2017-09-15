<%-- 
    Document   : studentmain
    Created on : 2017. 9. 15, 오후 6:58:40
    Author     : deocr
--%>
<%@page import="uts.wsd.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Main</title>
    </head>
    <body>
<%
    Student student = (Student)session.getAttribute("student");
    String email = student.getEmail();
    String name = student.getName();
%>
        <h1>Student Main Page</h1>
        <p>Hello <%= name %></p>
    </body>
</html>
