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
		
        <style type="text/css">
<!--
.style2 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 9mm;
}
.style3 {
font-family: Arial, Helvetica, sans-serif;
font-size: 5mm;
color:#000000;
}
.style41 {
	color: #FFFFFF;
	font-size: 35px;
	font-weight: bold;
}
-->
        </style>
</head>
    <body>
      
	<div id="maintempbody43">
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
              <div>&nbsp;</div>
               
                
	<div align="center" class="style41" >DOCTOR LIST</div><div align="center">
            <%--Connection con=connection.con();
            PreparedStatement pt=con.prepareStatement("select doctor.name from doctor");
ResultSet rs=pt.executeQuery();--%>
            <%ResultSet rs=(ResultSet)request.getAttribute("rms");%>
	       <div>&nbsp;</div>
                 <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><th width="140" height="50"><div align="center" class="style2">NAME</div>
                   </td>
                       <th width="140" height="50"><div align="center" class="style2">SPECIALIZE</div></td>
                 <th width="140" height="50"><div align="center" class="style2">MOBILE</div></td>
 <th width="140" height="50"><div align="center" class="style2">ADDRESS</div></td>
          <%while(rs.next()){
             %>
                   <tr><td width="140" height="50"><div align="center" class="style3"><%=rs.getString("name")%></div></td>
                       <td width="140" height="50"><div align="center" class="style3"><%=rs.getString("specialize")%></div></td>
                 <td width="140" height="50"><div align="center" class="style3"><%=rs.getString("mobile")%></div></td>
                  <td width="140" height="50"><div align="center" class="style3"><%=rs.getString("address")%></div></td>
             <%}%>    </table></div>
    </div>


    </body>
</html>
