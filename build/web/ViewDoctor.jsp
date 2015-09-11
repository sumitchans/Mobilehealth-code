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
 <%session=request.getSession(false);
 String user=(String) session.getAttribute("login");%>
        <div id="UserInnerBodyLayer1">

           
      <div id="adminLayer4">
        <table width="700" height="417" border="2" cellpadding="1" cellspacing="1">
          <tr>
            <td height="50" colspan="2"><div align="center" class="style1">DOCTOR PROFILE </div></td>
            
          </tr>
          <tr>
            <td width="200" height="40">NAME:</td>
            <td width="500"><%=request.getAttribute("name")%></td>
          </tr>
          <tr>
            <td width="200" height="40">DOCTOR_ID:</td>
            <td ><%=request.getAttribute("D_id")%></td>
          </tr>
          <tr>
            <td width="200" height="40">FATHER NAME: </td>
            <td><%=request.getAttribute("fname")%></td>
          </tr>
          <tr>
            <td width="200" height="40">ADDRESS</td>
            <td><%=request.getAttribute("address")%></td>
          </tr>
          <tr>
            <td width="200" height="40">MOBILE:</td>
            <td><%=request.getAttribute("mobile")%></td>
          </tr>
          <tr>
            <td width="200" height="40">SEX:</td>
            <td><%=request.getAttribute("sex")%></td>
          </tr>
          <tr>
            <td width="200" height="40">EMAIL_ID:</td>
            <td><%=request.getAttribute("email")%></td>
          </tr>
           <tr>
            <td width="200" height="40">COLLEGE</td>
            <td><%=request.getAttribute("college")%></td>
          </tr>
           <tr>
            <td width="200" height="40">SPECIALIZATION</td>
            <td><%=request.getAttribute("spe")%></td>
          </tr>
		  <tr><td height="40" ><div align="center"><a href="DoctorList.do">BACK TO LIST</a></div></td>
		  <td height="40"><blockquote>
		    <p><a href="DeleteDoctor.jsp?user_id=<%=request.getParameter("D_id")%>">DELETE USER</a></p>
		    </blockquote></td>
		  </tr>
        </table>
      </div>

	</div>
    </body>
</html>
