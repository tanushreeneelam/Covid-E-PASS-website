<%@include file="connection.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


       
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Statement st=con.createStatement();
            String id=request.getParameter("username");
            String pswd=request.getParameter("password");
                    
            if(id.equals("12345") && pswd.equals("12345"))
            { %>
                <jsp:forward page="admin_home.jsp"/>
             <% } 
            else
            { %>
                <jsp:forward page="error.jsp"/>     <!if 1st cond is false>
             <% } %>
                      
    </body>
</html>


<!String s=String(session.getAttribute(s)>
