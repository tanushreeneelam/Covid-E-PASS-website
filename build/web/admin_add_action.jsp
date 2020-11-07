<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
        <link rel="stylesheet" type="text/css" href="aft_reg.css">
    </head>
    <body>
        
        <%
            try{
            Integer id=Integer.parseInt(request.getParameter("area_id"));
            String a=request.getParameter("area");
            Integer c=Integer.parseInt(request.getParameter("count"));
            
            PreparedStatement ps=con.prepareStatement("INSERT INTO covid VALUES(?,?,?)");
            
            ps.setInt(1,id);   //row number, row name 
            ps.setString(2,a);
            ps.setInt(3,c);
           
            ps.executeUpdate();
            out.println("<script>alert('Value Got inserted successfully')</script>");
            }catch(Exception e){
                %><jsp:forward page="admin_add.jsp"/> <% //display some error msg
            }
        %>

            <a href="admin_add.jsp"><button class="btn">add another</button></a>
            <a href="admin_home.jsp"><button class="btn">home</button></a>
    </body>
</html>