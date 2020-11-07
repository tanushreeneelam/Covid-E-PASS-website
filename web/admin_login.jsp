<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null; };
        </script>
        <link rel="stylesheet" type="text/css" href="log.css">
    </head>
    <body>      
        <div class="wrapper">
            <div class="menu">
                <a href="index.jsp"><button class="menu-button">Home</button></a>
            </div>
        </div>
        
        <form class="box" action="admin_login_check.jsp" method="POST" target="_self">
            <h1>login</h1>
            <input type="text" name="username" id="username" placeholder="Username" autocomplete="off">
            <input type="password" name="password" id="pass" placeholder="Password" autocomplete="off">
            <input type="submit" id="submit" value="login">
        </form>
    </body>
</html>
