<%-- 
    Document   : UserAppointmentInformation
    Created on : 5 Apr, 2013, 3:27:51 PM
    Author     : sumit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="mobilehealth.css">
    </head>
    <body>
   <div id="UserInnerBodyLayer1">
       <%ResultSet rs=(ResultSet)request.getAttribute("Result");%>
       <div align="center" class="heading">APPOINTMENT INFORMATION</div>
       <div align="center"> <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="120" height="50"><div align="center">Doctor_name</div></td>
                       <td width="120" height="50"><div align="center">Specialize</div></td>
                 <td width="120" height="50"><div align="center">mobile</div></td>
                     <td width="120" height="50"><div align="center">address</div></td>
                 <td width="120" height="50"><div align="center">Meeting_time</div></td>
                 <td width="120" height="50"><div align="center">Date</div></td>
                   </tr>
          <%while(rs.next()){
             %>
                   <tr><td width="120" height="50"><div align="center"><%=rs.getString("doctor.name")%></div></td>
                       <td width="120" height="50"><div align="center"><%=rs.getString("doctor.specialize")%></div></td>
                 <td width="120" height="50"><div align="center"><%=rs.getString("doctor.mobile")%></div></td>
                  <td width="120" height="50"><div align="center"><%=rs.getString("doctor.address")%></div></td>
                 <td width="120" height="50"><div align="center"><%=rs.getString("appointment.response_time")%></div></td>
                 <td width="120" height="50"><div align="center"><%=rs.getString("appointment.DateANDTime")%></div></td>
                  </tr>
             <%}%>    </table>
      </div>  </div>
    </body>
</html>
