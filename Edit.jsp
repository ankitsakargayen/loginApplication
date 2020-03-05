<%-- 
    Document   : Edit
    Created on : 11 Mar, 2017, 8:11:14 PM
    Author     : itgrl1
--%>

<%@page import="com.itgr.City"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itgr.person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>J S P Page</title>
    </head>
    <body>
    <h1>UPDATE USER RECORD</h1>
        
        <%   person p = (person) request.getAttribute("person");
        %>
        
        <form action="UpdateServlet" method="post">
           User ID :  <input type="text" name="id" value="<%=p.getId()%>"> <br>
            Name : <input type="text" name="nm" value="<%=p.getName()%>"/> <br>
            Password : <input type="text" name="pwd" value="<%=p.getPwd()%>"/> <br>
          
           <b>CITY:</b>
     <%
            ArrayList citylist = (ArrayList)request.getAttribute("clist");
           
                Iterator itr =citylist.iterator();
                %>
               
                <select name="cy">
       <%
        while(itr.hasNext())
                {
                    City c =(City) itr.next();
                    %>
                    
                    <option value="<%=c.getCi()%>"><%=c.getCc()%></option>
             <%
   }           
%>
                </select>
            <br>
            <input type="submit" value="Update USER"/>
   </br>
        </form>

