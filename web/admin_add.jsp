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
                <a href="admin_home.jsp"><button class="menu-button">Home</button></a>
            </div>
        </div>
        
        <form class="box" action="admin_add_action.jsp" method="POST" target="_self">
            <h1>Add a new city</h1>
            <input type="text" name="area_id" id="username" placeholder="Area ID" > 
            <input type="text" name="area" id="username" placeholder="Area" > 
            <input type="text" name="count" id="username" placeholder="Count" >
            <input type="submit" id="submit" value="Submit">
        </form>
    </body>
</html>
<!--autocomplete="off"--!> 