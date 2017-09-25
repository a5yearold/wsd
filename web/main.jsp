<%-- 
    Document   : studentmain
    Created on : 2017. 9. 15, 오후 6:58:40
    Author     : deocr
--%>
<%@page import="uts.wsd.Student"%>
<%@page import="uts.wsd.Tutor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Main</title>
</head>
<body>
    <h1>Main Page</h1>
    <div class="container">
<%
    if (session.getAttribute("type").equals("tutor")) {
        Tutor tutor = (Tutor)session.getAttribute("tutor");
%>
        
    <table width="100%">
        Hello tutor
        
        <%= tutor.getName() %>
        <!--<form>
            <tr style="background-color: lightgrey"><td>Search: <input type="search" name="searchbox" placeholder="Subject / Tutor"><input type="submit" value="Search"></td></tr>
        </form>-->  
<% } else { %>
<tr><td>Hello student</td></tr>
<% } %>
    </table>
    </div>
    </body>
</html>
