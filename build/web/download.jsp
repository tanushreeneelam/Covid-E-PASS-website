<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <a href="DownloadServlet?filename=<%=(String)session.getAttribute("aadhar_no")%>.pdf">Download </a>
        <br>
        <button><a href="home.jsp">Home</a></button>
        
    </body>
</html>