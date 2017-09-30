<%-- 
    Document   : registration
    Created on : 2017. 9. 11, 오후 5:52:39
    Author     : deocr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body bgcolor="#9ae59a">
        <h2>Enter your details:</h2>
        <form method="post" action="welcome.jsp">
            <table>
                <tr><td>Full Name:</td><td><input type="text" name="name"></td></tr>
                <tr><td>Email:</td><td><input type="text" name="email"></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password"></td></tr>
                <tr><td>Date of Birth :</td><td><input type="date" name="dob" placeholder="dd/mm/yyyy"></td></tr>
                <tr><td>I am a: </td>   <td><select name="user_type" id="user_type" onchange="showSubjects();">
                            <option value="student">Student</option>
                            <option value="tutor">Tutor</option></select></td></tr>
                <tr id="specialty" style="display: none"><td>Subject Specialty:</td> <td><select name="specialty">
                            <option value=0 selected="selected">Choose...</option>
                            <option value="WSD">WSD</option>
                            <option value="USP">USP</option>
                            <option value="SEP">SEP</option>
                            <option value="AppProg">AppProg</option>
                            <option value="MobileApp">MobileApp</option></select></td></tr>
                <tr><td></td><td><input type="submit" value="Register"></td></tr>
            </table>            
        </form>
        
        <script type="text/javascript">
            function showSubjects() {
                
                var selection = document.getElementById("user_type");
                var type = selection.options[selection.selectedIndex].value;
                
                if(type === "tutor" ){
                    document.getElementById('specialty').style.display = "block";
                }
                else
                    document.getElementById('specialty').style.display = "none";
            }

    
        </script>
        
    </body>
</html>

