<%-- 
    Document   : DoctorList2
    Created on : 22 Mar, 2013, 1:18:21 PM
    Author     : sumit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="pack.connection"%>
<%@page import="java.sql.Connection"%>
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
	font-size: 9mm;
	font-weight: bold;
}
-->
         </style>
</head>
    <body>
        <div id="UserInnerBodyLayer1">
     
            <%session=request.getSession(false);
            Connection con=connection.con();
            PreparedStatement pt=con.prepareStatement("select * from doctor where D_id!=?");
            pt.setString(1,(String)session.getAttribute("login"));
ResultSet rs=pt.executeQuery();%>
	     <div align="center" class="heading">DOCTOR_LIST</div>
               <div align="center">  <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="140" height="50"><div align="center">NAME</div></td>
                       
                       <td width="140" height="50"><div align="center">COLLEGE</div></td>
                           <td width="140" height="50"><div align="center">SPECIALIZATION</div></td>
                 <td width="140" height="50"><div align="center">MOBILE</div></td>
                 <td width="140" height="50"><div align="center">DISCUSSION</div></td>
                 <td width="140" height="50"><div align="center">VIEW PROFILE</div></td>
                   </tr>
          <%while(rs.next()){%>
                   <tr><td width="140" height="50"><div align="center"><%=rs.getString("name")%></div></td>
                       <td width="140" height="50"><div align="center"><%=rs.getString("college")%></div></td>
                           <td width="140" height="50"><div align="center"><%=rs.getString("specialize")%></div></td>
                 <td width="140" height="50"><div align="center"><%=rs.getString("mobile")%></div></td>
                 <td width="140" height="50"><div align="center"><a href="DiscussionDoctor.do?user_id=<%=rs.getString("D_id")%>&spe=<%=rs.getString("specialize")%>">DISCUSSION</a></div></td>
                 <td width="140" height="50"><div align="center"><a href="ViewDoctor.do?user_id=<%=rs.getString("D_id")%>">Viewprofile</a></div></td></tr>
             <%}%>    </table></div>
 <div align="center"><form action="sort1.do" method="post">
            <select name="dropdown">
<option value="eye" selected>eye</option>
<option value="ear">ear</option>
<option value="cardiologist">cardiologist</option>
<option value="dentist">dentist</option>
</select>
<input type="submit" value="Submit" /></form></div>    </div>
    </body>
</html>
