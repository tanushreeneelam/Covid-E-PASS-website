  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Page</title>
    </head>
    <body>
        <span>We already send a verification  code to your email.</span>
        
        <form action="VerifyCode" method="post">
            <input type="text" name="authcode" >
            <input type="submit" value="verify">
        </form>
        
        <br>
        <button><a href="ResendOTP">Resend OTP</a></button>
        
        <br>
        <a href="register.jsp">re-enter details</a>
    </body>
</html>

  