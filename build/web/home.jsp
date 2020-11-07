<%-- 
    Document   : home
    Created on : Aug 12, 2020, 12:11:30 AM
    Author     : Tanushree Neelam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h1>Homeee</h1>
        
        <form class="box" action="home_action.jsp" method="POST" target="_self">
            <h1>E-Pass</h1>
            <input type="text" name="src" id="username" placeholder="Source" >
            <input type="text" name="dest" id="pass" placeholder="Destination" >
            <input type="submit" id="submit" value="Submit">
        </form>
        
    </body>
</html>
