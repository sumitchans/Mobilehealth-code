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
	
            <%--Connection con=connection.con();
            PreparedStatement pt=con.prepareStatement("select doctor.name from doctor");
ResultSet rs=pt.executeQuery();--%>
            <%ResultSet rs=(ResultSet)request.getAttribute("sort");%>
	  <div align="center" class="heading">DOCTOR LIST</div>   
               <div align="center">  <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="120" height="50"><div align="center">name</div></td>
                       <td width="120" height="50"><div align="center">Specialize</div></td>
                 <td width="120" height="50"><div align="center">mobile</div></td>
                     <td width="120" height="50"><div align="center">address</div></td>
                 <td width="120" height="50"><div align="center">GetAppoointment</div></td>
                 <td width="120" height="50"><div align="center">Viewprofile</div></td>
                   <td width="100" height="50"><div align="center">Ask</div></td></tr>
          <%while(rs.next()){
             %>
                   <tr><td width="120" height="50"><div align="center"><%=rs.getString("name")%></div></td>
                       <td width="120" height="50"><div align="center"><%=rs.getString("specialize")%></div></td>
                 <td width="120" height="50"><div align="center"><%=rs.getString("mobile")%></div></td>
                  <td width="120" height="50"><div align="center"><%=rs.getString("address")%></div></td>
                 <td width="120" height="50"><div align="center"><a href="gt.do?user_id=<%=rs.getString("D_id")%>&spe=<%=rs.getString("specialize")%>">GetAppointment</a></div></td>
                 <td width="120" height="50"><div align="center"><a href="ViewDoctor.do?user_id=<%=rs.getString("D_id")%>">Viewprofile</a></div></td>
                   <td width="120" height="50"><div align="center"><a href="Ad.do?user_id=<%=rs.getString("D_id")%>&spe=<%=rs.getString("specialize")%>">Ask</a></div></td></tr>
             <%}%>    </table></div>   
             <div align="center"><form action="sort2.do" method="post">
            <select name="dropdown">
<option value="eye" selected>eye</option>
<option value="ear">ear</option>
<option value="cardiologist">cardiologist</option>
<option value="dentist">dentist</option>
</select>
<input type="submit" value="Submit" /></form></div>
      </div>


    </body>
</html>
