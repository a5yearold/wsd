package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import uts.wsd.Students;
import uts.wsd.Student;
import uts.wsd.Tutor;
import uts.wsd.Tutors;
import java.util.*;

public final class welcome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
   
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String type = request.getParameter("user_type");
    String subject = request.getParameter("specialty");
    

      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
 String filePath = application.getRealPath("WEB-INF/Students.xml");
      out.write("\n");
      out.write("    <p>type: ");
      out.print( type );
      out.write(" subject: ");
      out.print( subject );
      out.write("</p>\n");
      uts.wsd.StudentApplication studentApp = null;
      synchronized (application) {
        studentApp = (uts.wsd.StudentApplication) _jspx_page_context.getAttribute("studentApp", PageContext.APPLICATION_SCOPE);
        if (studentApp == null){
          studentApp = new uts.wsd.StudentApplication();
          _jspx_page_context.setAttribute("studentApp", studentApp, PageContext.APPLICATION_SCOPE);
          out.write('\n');
          org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("studentApp"), "filePath",
filePath);
          out.write('\n');
        }
      }
      out.write('\n');
Students students = studentApp.getStudents();
      out.write('\n');
      out.write('\n');
 String filePath2 = application.getRealPath("WEB-INF/Tutors.xml");
      out.write('\n');
      out.write('\n');
      uts.wsd.TutorApplication tutorApp = null;
      synchronized (application) {
        tutorApp = (uts.wsd.TutorApplication) _jspx_page_context.getAttribute("tutorApp", PageContext.APPLICATION_SCOPE);
        if (tutorApp == null){
          tutorApp = new uts.wsd.TutorApplication();
          _jspx_page_context.setAttribute("tutorApp", tutorApp, PageContext.APPLICATION_SCOPE);
          out.write('\n');
          org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("tutorApp"), "filePath",
filePath2);
          out.write('\n');
        }
      }
      out.write('\n');
Tutors tutors = tutorApp.getTutors();
      out.write("\n");
      out.write("    \n");
 
    if (students.getStudent(email) == null && tutors.getTutor(email) == null) {
        if(type.equals("student")) {
            Student student = new Student(name, email, password, dob);
            session.setAttribute("student", student);
            students.addStudent(student);
            studentApp.updateXML(students, filePath);
            //StudentsPrinter.html.print(filepath,out);
            //response.sendRedirect("main.jsp");
        }
        
        else {
            Tutor tutor = new Tutor(name, email, password, dob, subject);
            session.setAttribute("tutor", tutor);
            tutors.addTutor(tutor);
            tutorApp.updateXML(tutors, filePath2);
            //TutorsPrinter.html.print(filepath, out);
            //response.sendRedirect("main.jsp");
        }
    } else {
    

      out.write("\n");
      out.write("<p>Sorry, email is already in use, please <a href=\"registration.jsp\">try again.</a></p>\n");

        } 

      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
