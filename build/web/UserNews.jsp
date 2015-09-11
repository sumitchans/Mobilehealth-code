<%-- 
    Document   : UserNews
    Created on : 7 Apr, 2013, 8:43:11 PM
    Author     : sumit
--%>

<%@page import="pack.connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>
    </head>
    <body>
        <div id="UserInnerBodyLayer1">
          
        <%ResultSet rs=(ResultSet)request.getAttribute("rm");
    /*Connection cn=connection.con();         
        PreparedStatement pr=cn.prepareStatement("select *from news order by date desc");
        ResultSet rs=pr.executeQuery();*/
        int i=1;%>
       <div align="center" class="heading">NEWS</div>
        <div align="center">
             <table height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="100" height="50"><div align="center">S_NO</div></td>
                       <td width="500" height="50"><div align="center">SUBJECT</div></td>
                 <td width="100" height="50"><div align="center">DATE</div></td></tr>
           <%while(rs.next()){%>
              <tr><td width="100" height="50"><div align="center"><%=i%></div></td>
                       <td width="500" height="50"><div align="center">
                               <a href="UserNews1.do?sub=<%=rs.getString("subject")%>"><%=rs.getString("subject")%></a></div></td>
                 <td width="100" height="50"><div align="center"><%=rs.getString("date")%></div></td></tr>
            <%i++;}%></table>
        </div>
        </div>
    </body>
</html>
