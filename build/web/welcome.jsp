<%-- 
    Document   : welcome
    Created on : 2017. 9. 14, 오후 5:07:26
    Author     : deocr
--%>

<%@page import="uts.wsd.Students"%>
<%@page import="uts.wsd.Student"%>
<%@page import="uts.wsd.Tutor"%>
<%@page import="uts.wsd.Tutors"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<%   
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String type = request.getParameter("user_type");
    String subject = request.getParameter("specialty");
    
%>

    <body>
<% String filePath = application.getRealPath("WEB-INF/Students.xml");%>
    
<jsp:useBean id="studentApp" class="uts.wsd.StudentApplication" scope="application">
<jsp:setProperty name="studentApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%Students students = studentApp.getStudents();%>
    
<% 
    if (type.equals("student")) {
        if(students.getStudent(email) == null) {
            Student student = new Student(name, email, password, dob);
            session.setAttribute("student", student);
            students.addStudent(student);
            studentApp.updateXML(students, filePath);
            //StudentsPrinter.html.print(filepath,out);
            response.sendRedirect("studentmain.jsp");
        }
    } else {
%>
<% filePath = application.getRealPath("WEB-INF/Tutors.xml"); %>

<jsp:useBean id="tutorApp" class="uts.wsd.TutorApplication" scope="application">
<jsp:setProperty name="tutorApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%Tutors tutors = tutorApp.getTutors();%>

<% 
        if (tutors.getTutor(email) == null) {
            Tutor tutor = new Tutor(name, email, password, dob, subject);
            session.setAttribute("tutor", tutor);
            tutors.addTutor(tutor);
            tutorApp.updateXML(tutors, filePath);
            //TutorsPrinter.html.print(filepath, out);
            response.sendRedirect("tutormain.jsp");
        } else {
%>
<p>Sorry, email is already in use, please <a href="registration.jsp">try again.</a></p>
<%
        }
    } 
%>
</body>

