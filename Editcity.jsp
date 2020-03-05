<%-- 
    Document   : Editcity
    Created on : 27 Mar, 2017, 8:03:17 PM
    Author     : itgrl1
--%>

<%@page import="com.itgr.City"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit User City</h1>
        
        
        <%   City p = (City) request.getAttribute("City");
        %>
        
        <form action="UpdatecityServlet" method="post">
            City ID :  <input type="text" name="ci" value="<%=p.getCi()%>"> <br>
            City : <input type="text" name="cn" value="<%=p.getCc()%>"/> <br>
            State : <input type="text" name="cs" value="<%=p.getCs()%>"/> <br>
            country : <input type="text" name="cc" value="<%=p.getCn()%>"/> <br>
            
            <input type="submit" value="Update City"/>
        </form>
    </body>
</html>
