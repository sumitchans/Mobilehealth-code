<%-- 
    Document   : admin
    Created on : 27 Feb, 2013, 3:22:48 AM
    Author     : sumit
--%>
<%@page import="java.sql.*"%>
<%@page import="pack.connection" %>
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
	 
            <%Connection con=connection.con();
            PreparedStatement pt=con.prepareStatement("select * from patient INNER JOIN login on patient.p_id=login.login_id ");
ResultSet rs=pt.executeQuery();%>
	     <div align="center" class="heading">USER LIST</div>
                <div align="center"> 
                 <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1">
                   <tr><td width="140"><div align="center">name</div></td><td width="140"><div align="center">p_id</div></td>
                 <td width="140"><div align="center">mobile</div></td><td width="140"><div align="center">Delete</div></td><td width="140"><div align="center">Viewprofile</div></td></tr>
          <%while(rs.next()){%>
                   <tr><td width="140" height="50"><div align="center"><%=rs.getString("name")%></div></td>
                       <td width="140" height="50"><div align="center"><%=rs.getString("p_id")%></div></td>
                 <td width="140" height="50"><div align="center"><%=rs.getString("mobile")%></div></td>
                 <td width="140" height="50"><div align="center"><a href="DeleteUser.do?user_id=<%=rs.getString("p_id")%>">Delete</a></div></td>
                 <td width="140" height="50"><div align="center"><a href="ViewUser.do?user_id=<%=rs.getString("p_id")%>">Viewprofile</a></div></td></tr>
           <%}%>   </table></div>
      </div>

	
    </body>
</html>
