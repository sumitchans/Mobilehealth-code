<%-- 
    Document   : forward4
    Created on : 9 Apr, 2013, 9:10:16 PM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%String User_id=(String)request.getAttribute("user");
    String date=(String)request.getAttribute("date");
String time=(String)request.getAttribute("time");%>
        <jsp:forward page="Answer.do?user_id=<%=User_id%>&date=<%=date%>&time=<%=time%>"/>
    </body>
</html>
