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
            Statement stt=con.createStatement();
            String s=request.getParameter("src").toUpperCase();
            String d=request.getParameter("dest").toUpperCase();
            boolean flag1;
            boolean flag2;
            
            ResultSet rs=st.executeQuery("select count from covid where area='"+s+"'"); 
            ResultSet RS=stt.executeQuery("select count from covid where area='"+d+"'");
            if(rs.next() && RS.next())
            {
                int c1=rs.getInt(1);
                int c2=RS.getInt(1);
                
                if(c1<=40 && c2<=40)
                {
                    session.setAttribute("source",s);
                    session.setAttribute("destination",d);
                    %>  <jsp:forward page="generate_pdf.jsp"/> <%}
                else
                {%>  <jsp:forward page="error_covid.jsp"/> <%}
            }
            else
            {
                %>  <jsp:forward page="error.jsp"/> <%  //sql error
            }
            
            
            %>
    </body>
</html>

<!String s=String(session.getAttribute(s)>
