<%-- 
    Document   : index
    Created on : 8 Mar, 2017, 7:26:38 PM
    Author     : itgrl1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style>
          a {
    color: yellow;
}
body {
    background-image: url("css.jpeg");
      background-repeat: repeat-x;
}
body {
    color: yellow;
}


h1 {
 background-image: url("css1");
    color: #b1eda3;
    text-align: center;
}
a {
    display:inline-block; margin-right:10px;
}
p {
    font-size: 200%;
}
h1 {
    font-size: 400%;
}
h2 {
    font-size: 150%;
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: nw-resize;
}

</style>
<!--<script>
function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Dont Try to hack it!!");
        return false;
    }
}
</script>-->
    </head>
 

        <fieldset>
        <h1>Login Form</h1>
      
       <h2> <a href="index.jsp"> LOGIN</a>
        
        <a href="UsercityServlet" target="_blank">REGISTER</a>
      
        <a href="DisplayServlet">USER LIST</a>
       
        <a href="addcity.jsp"> ADD CITY </a>
       
        <a href="DisplaycityServlet">CITY LIST</a>
       </h2>
        <br>
       <br>
       <form action="LoginServlet" method="post" name="myForm" onsubmit="return validateForm();">
           <p>Username:<input type="text" name="name"></p>
            <br>
            <p>Password:<input type="password" name="pwd"></p>
            </br>
            <br>
            <input type="submit" value="login" class="button">
        </br>    
        </form>
        
       
        </fieldset>
 
    </body>
  
</html>
