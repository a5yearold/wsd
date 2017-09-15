<%-- 
    Document   : logincheck
    Created on : 2017. 9. 11, ì˜¤í›„ 6:12:29
    Author     : deocr
--%>

<%@page import="uts.wsd.Student"%>
<%@page import="uts.wsd.Students"%>
<%@page import="uts.wsd.Tutor"%>
<%@page import="uts.wsd.Tutors"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>


    </head>
    <body>
        
        <% String filePath = application.getRealPath("WEB-INF/Students.xml");%>
        <jsp:useBean id="studentApp" class="uts.wsd.StudentApplication" scope="application">
            <jsp:setProperty name="studentApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Students students = studentApp.getStudents();
            Student student = students.login(email, password);

                if (student != null) {
                session.setAttribute("student", student);
                response.sendRedirect("studentmain.jsp");
              
                
                } else { %>
                
        <% filePath = application.getRealPath("WEB-INF/Tutors.xml");%>
        <jsp:useBean id="tutorApp" class="uts.wsd.TutorApplication" scope="application">
            <jsp:setProperty name="tutorApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            email = request.getParameter("email");
            password = request.getParameter("password");
            Tutors tutors = tutorApp.getTutors();
            Tutor tutor = tutors.login(email, password);

                if (tutor != null) {
                session.setAttribute("tutor", tutor);
                response.sendRedirect("tutormain.jsp");
              
        %>
                <% } else { %>
                <p>Username or Password was incorrect, <a href="login.jsp">Try again.</a></p>
                <% } %>
        

    </body>
</html>