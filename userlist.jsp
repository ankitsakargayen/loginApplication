<%-- 
    Document   : userlist
    Created on : 9 Mar, 2017, 8:55:19 PM
    Author     : itgrl1
--%>

<%@page import="com.itgr.City"%>
<%@page import="com.itgr.person"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user details</title>


    </head>
    
    <body bgcolor='silver'>
        <fieldset>        
       
           <h1>USER RECORD</h1>
       
            <table width="50%" border="1">
            <tr bgcolor="yellow">
                
                <th>User ID</th>
                <th>Name</th>
                <th>Password</th>
                 <th>City</th>
            </tr>
       
           <%
            ArrayList personlist = (ArrayList)request.getAttribute("plist");
           
                Iterator itr =personlist.iterator();
                
                while(itr.hasNext())
                {
                    person p =(person) itr.next();
                    
                    %>
                     <tr>
                        
                <td><%=p.getId()%></td>
                <td><%=p.getName()%></td>
                <td><%=p.getPwd()%></td>
                <td><%=p.getCy()%></td>
                 <td><a href="DeleteServlet?uid=<%=p.getId()%>">Delete</a></td>
                 <td><a href="EditServlet?uid=<%=p.getId()%>">Edit</a></td>
                     </tr>
                <%
                }

            %>
            
        </table>
      
            
        </fieldset>
    </body>
</html>
