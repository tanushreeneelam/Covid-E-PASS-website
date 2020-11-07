<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null; };
        </script>
        <title>Register Page</title>
        <link rel="stylesheet" type="text/css" href="register.css">
    </head>
    <body>
  
       <form class="box" action="UserVerify" method="POST" target="_self">
           <h1>register</h1>
           <input type="text" name="username" id="username" placeholder="Username" required> <!id used in css page>
           <input type="email" name="useremail" id="email" placeholder="Email ID" >
           <input type="text" name="aadhar" id="email" placeholder="Aadhar Number" minlength="3" maxlength="3">
           <input type="submit" id="submit" value="login">
       </form>
        
    </body>
</html>
