<%-- 
    Document   : invalid
    Created on : 8 Mar, 2017, 8:09:14 PM
    Author     : itgrl1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    </head>
    <body>
        <h1>invalid user</h1>
       
        <%String nm =request.getParameter("username");%>
        
        <h2><%=nm%> is not a valid user </h2>
        <% if (nm==null || nm.isEmpty()){%>
        <h2 style="color:red">Trying to Hack me !!!<img src="12345.png"> </h2>
        <%}else{%>
        <h2> Try another password or username</h2>
        <%}%>
    </body>
</html>
