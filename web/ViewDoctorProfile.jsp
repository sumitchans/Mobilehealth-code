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
        <table width="700" height="417" border="2" cellpadding="1" cellspacing="1">
          <tr>
            <td height="50" colspan="3"><div align="center" class="heading">DOCTOR PROFILE </div></td>
          </tr>
          <tr>
            <td width="197" height="40">NAME:</td>
            <td colspan="2"><%=request.getAttribute("name")%></td>
          </tr>
          <tr>
            <td width="197" height="40">DOCTOR_ID:</td>
            <td colspan="2" ><%=request.getAttribute("D_id")%></td>
          </tr>
          
          <tr>
            <td width="197" height="40">ADDRESS</td>
            <td colspan="2"><%=request.getAttribute("address")%></td>
          </tr>
          <tr>
            <td width="197" height="40">MOBILE:</td>
            <td colspan="2"><%=request.getAttribute("mobile")%></td>
          </tr>
          <tr>
            <td width="197" height="40">SEX:</td>
            <td colspan="2"><%=request.getAttribute("sex")%></td>
          </tr>
          <tr>
            <td width="197" height="40">EMAIL_ID:</td>
            <td colspan="2"><%=request.getAttribute("email")%></td>
          </tr>
           <tr>
            <td width="197" height="40">COLLEGE</td>
            <td colspan="2"><%=request.getAttribute("college")%></td>
          </tr>
           <tr>
            <td width="197" height="40">SPECIALIZATION</td>
            <td colspan="2"><%=request.getAttribute("spe")%></td>
          </tr>
		  <tr><td height="40" ><div align="center"><a href="DoctorList.do">BACK TO LIST</a></div></td>
		  <td width="231" height="40"><blockquote>
		    <p><a href="AskDoctor1.do?user_id=<%=request.getAttribute("D_id")%>&spe=<%=request.getAttribute("spe")%>">AskDoctor</a></p>
		    </blockquote></td>
		  <td width="252"><blockquote>
		    <p><a href="GetAppointment1.do?user_id=<%=request.getAttribute("D_id")%>&spe=<%=request.getAttribute("spe")%>">GetAppointmentDoctor</a></p>
		    </blockquote></td>
		  </tr>
        </table>
      </div>


    </body>
</html>
