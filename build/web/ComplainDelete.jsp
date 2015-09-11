<%-- 
    Document   : ComplainDelete
    Created on : 18 Mar, 2013, 9:48:12 PM
    Author     : sumit
--%>
<%@page import="pack.connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String Complainer_id=request.getParameter("User_id");
       String date=request.getParameter("date"); %>
      <%Connection cn=connection.con();
      PreparedStatement prt=cn.prepareStatement("delete from complain where Complainer_id=? and date=?");
prt.setString(1,Complainer_id);
prt.setString(2,date);
int a=prt.executeUpdate();
if(a>0){%><jsp:forward page="ViewComplain.do"/><%}%>
    </body>
</html>
