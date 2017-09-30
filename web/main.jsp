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
                Tutor tutor = (Tutor)session.getAttribute("tutor");
                if (tutor != null) {
            %>

            <table width="100%">
                Hello tutor <%= tutor.getName()%>
                
                <tr><td align="right"><u><a href="booking.jsp">Booking</a></u> |
                        <u><a href="logout.jsp">Logout</a></u>
                    </td>                  
                </tr>
                <!--<form>
                    <tr style="background-color: lightgrey"><td>Search: <input type="search" name="searchbox" placeholder="Subject / Tutor"><input type="submit" value="Search"></td></tr>
                </form>-->  
                <% } else { 
                    Student student = (Student)session.getAttribute("student");
                %>
                Hello student <%= student.getName()%>
            <form action="main.jsp" method="POST">
                <tr>
                    <td>Search Tutor By: 
                        <select name="search_by" id="search_by">
                            <option value="subject">Subject</option>
                            <option value="tname">Name</option>
                            <option value="tstatus">Status</option>
                        </select>
                        <input type="search" name="search" placeholder="Specify..." id="search">
                        <input type="submit" value="Search">
                        <input type="hidden" name="searched" value="searched" id="searched" >
                    </td>
                </tr>
            </form>
            <% 
                 String submitted = request.getParameter("searched");
                if (submitted != null) {
                    String user_input = request.getParameter("search_by");
                    String search = request.getParameter("search");
                    
                    
                
            }
            %>
                <tr>
                    <td align="right">
                        <u><a href="booking.jsp">Booking</a></u> |
                        <u><a href="logout.jsp">Logout</a></u>
                    </td>                  
                </tr>
                <% }%>
            </table>
        </div>
    </body>
</html>
