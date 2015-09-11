<%-- 
    Document   : ViewComplain
    Created on : 16 Mar, 2013, 8:01:37 PM
    Author     : sumit
--%>

<%@page import="java.sql.*"%>
<%@page import="pack.connection"%>
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
     
	   <div id="GetAppointmentLayer2">
      <div align="center" class="heading">COMPLAINT</div></div>
	  <div id="GetAppointmentLayer3">
	    <table width="700" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="350" height="50"><div align="center"><a href="UserComplainResponse.do">Response</a></div></td>
            <td width="350"><div align="center"><a href="ApplyForComplain.do">Apply for complain</a></div></td>
          </tr>
        </table>
	  </div>
		<div id="ViewComplainLayer4">
                 <%
                 int i=1;
ResultSet rs=(ResultSet)request.getAttribute("rs");

 if(rs!=null)
         {%>
 <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr>
                       <td width="50" height="50"><div align="center">S.no</div></td>
                       <td width="250" height="50"><div align="center">Subject</div></td>
                 <td width="100" height="50"><div align="center">Date_of_complain</div></td>
                 <td width="100" height="50"><div align="center">Date_of_complain</div></td>
                 <td width="350" height="50"><div align="center">Response</div></td>
                 <td width="100" height="50"><div align="center">Delete</div></td>
                   </tr>
      <%while(rs.next()){%>
     <%
      %><tr> <td width="50" height="50"><div align="center"><%=i++%></div></td>
                       <td width="250" height="50"><div align="center"><%=rs.getString("sub")%></div></td>
                 <td width="100" height="50"><div align="center"><%=rs.getString("date")%></div></td>
                  <td width="100" height="50"><div align="center"><%=rs.getString("response_date")%></div></td>
                 <td width="350" height="50"><div align="center"><%=rs.getString("response")%></div></td>
                 <td width="100" height="50"><div align="center"><a href="UserComplaindelete.do?date=<%=rs.getString("date")%>&rs_date=<%=rs.getString("response_date")%>">Delete</a></div></td>
                   </tr>
        <%}%>
        </table>
 
 <%}%>




               </div>
    </div>
 
    </body>
</html>