<%-- 
    Document   : header
    Created on : 13 Feb, 2013, 8:34:50 PM
    Author     : sumit
--%>
<%@page import="java.sql.*"%>
<%@page import="pack.connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="mobilehealth.css" />


</head>

<body>
<div id="header1"><table width="1200" height="350" border="0 align=" cellpadding="0px" cellspacing="0px">
  <tr>
    <td height="55"><div id="header2">
      <table width="900" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="250" height="55"><img src="images/logo.jpg" alt="medical" width="250" height="55"/></td>
          <td><marquee><p><font size="10px" >KNIT SULTANPUR</font></p></marquee></td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="50"><div id="Layer2">
      <table width="1200" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="150"  height="50" class="tab"><%session=request.getSession(false);
                if(session.getAttribute("login")!=null){%><%
                String user=(String)session.getAttribute("login");
          Connection cn=connection.con();      
          PreparedStatement pr=cn.prepareStatement("select role from login where login_id=?");
    pr.setString(1,user);
ResultSet rt=pr.executeQuery();
                if(rt.next()){
                    if(rt.getString("role").equalsIgnoreCase("user")){%>
                    <a href="UserHome.do" class="top">HOME</a>
                    <%}else{if(rt.getString("role").equalsIgnoreCase("doctor")){%>
                    <a href="DoctorHome.do" class="top">HOME</a><%}else{%>
                    <a href="AdminHome.do" class="top">HOME</a><%}%>
          <%}}%><%}%><%else{%><a href="tem.do" class="top">HOME</a><%}%></td>
				<td width="150" class="tab" ><a href="DoctorList.do" class="top">DOCTOR_LIST</a></td>
				<td width="150" class="tab" ><a href="Rules.do" class="top">RULES</a></td>
				<td width="150" class="tab"><a href="Aboutus.do" class="top">ABOUT US</a></td>
				<td width="150" class="tab"><a href="Contactus.do" class="top">CONTACT US</a></td>
		
                <td width="150" height="50" class="tab"><%session=request.getSession(false);
                if(session.getAttribute("login")!=null){%>
<a href="logout.do" class="top">LOGOUT</a><%}else{%>
                <a href="Lo.do" class="top">LOGIN</a><%}%>
              </td><form method="get" action="http://www.google.com/search">
                		<td width="300"  class="tab1"><input name="search" type="text" value="google" size="20"/>
                		<input type="submit" name="SEARCH"/></form></td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="245"><div id="header3">
      <table width="1200" height="250" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="images/banner.jpg" alt="dd" width="1200" height="250" /></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table></div>
</body>
</html>
