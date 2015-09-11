<%-- 
    Document   : UserNews1
    Created on : 7 Apr, 2013, 9:10:50 PM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>
    </head>
    <body>
        <%String subject=request.getParameter("sub");%>
         <div id="UserInnerBodyLayer1">
             <div align="center" class="heading">NEWS FOR:<%=subject%></div>
<div ><iframe src="News/<%=subject%>.pdf" name="News" height="500" width="800"></iframe></div>
<div align="center"><a href="UserNews.do">BACK TO NEWS LIST</a></div>
        </div>
    </body>
</html>
