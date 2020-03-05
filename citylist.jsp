<%-- 
    Document   : citylist
    Created on : 18 Mar, 2017, 7:12:54 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1> CITY LIST </h1>
        <table width="50%" border="1">
            <tr bgcolor="yellow">
                
                <th>City id</th>
                <th>City</th>
                <th>State</th>
                  <th>country</th>
            </tr>
       
           <%
            ArrayList personlist = (ArrayList)request.getAttribute("clist");
           
                Iterator itr =personlist.iterator();
                
                while(itr.hasNext())
                {
                    City p =(City) itr.next();
                    %>
                     <tr>
                         <td><%=p.getCi()%></td>
                         <td><%=p.getCc()%></td>
                         <td><%=p.getCs()%></td>
                         <td><%=p.getCn()%></td>
                         <td><a href="DeleteCityServlet?cid=<%=p.getCi()%>">Delete</a></td>
                         <td><a href="EditcityServlet?cid=<%=p.getCi()%>">Edit</a></td>
                     </tr>
                <%
                }

            %>
        </table>
      
    </body>
</html>
