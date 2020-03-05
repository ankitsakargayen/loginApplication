<%-- 
    Document   : adduser
    Created on : 9 Mar, 2017, 7:25:49 PM
    Author     : itgrl1
--%>

<%@page import="com.itgr.City"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
         body {
    background-image: url("css2.jpg");
      background-repeat: repeat-x;
}   
body {
    color: black;
}
h1 {
 
    color:yellow;
    text-align: center;
}
p {
    font-size: 150%;
}
   .button {
    background-color: #4CAF50;
    border: buttontext;
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
    </head>
    <body>
     
            <h1><b>NEW USER REGISTRATION</b></h1>
        <br>
        <form action="adduser">
            
            <p><b>NAME:</b><input type="text" name="name">
        </br>
        <br>
        <b>USER ID:</b><input type="text" name="userid">
        </br>
        <br>
        <b>PASSWORD:</b><input type="text" name="pwd">
    </br>
    <br>
    <b>CITY:</b>
     <%
            ArrayList citylist = (ArrayList)request.getAttribute("clist");
           
                Iterator itr =citylist.iterator();
                %>
               
                <select name="cy">
       <%
        while(itr.hasNext())
                {
                    City p =(City) itr.next();
                    %>
                    
                    <option value="<%=p.getCi()%>"><%=p.getCn()%></option>
             <%
   }           
%>

   </select>
    </br>
    <br>
            </p>
            <input type="submit" value="REGISTER" class="button">
    </br>
    </form>
      
    </body>
    
</html>
