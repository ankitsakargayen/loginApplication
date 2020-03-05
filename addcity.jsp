<%-- 
    Document   : addcity
    Created on : 14 Mar, 2017, 8:25:59 PM
    Author     : itgrl1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <fieldset>
           
        <h1>User City Info.</h1>
        <form action="addcityServlet">
            <br>
            city id:<input type="text" name="ci">
            </br>
            <br>
            Name:<input type="text" name="cn">
            </br>
            <br>
            State:<input type="text" name="cs">
            </br>
            <br>
            Country:<input type="text" name="cc">
            </br>
            <br>
            <input type="submit" value="::ADD CITY::">
        </br>
       
        
        
        
        
        </form>
        </fieldset>>
    </body>
</html>
