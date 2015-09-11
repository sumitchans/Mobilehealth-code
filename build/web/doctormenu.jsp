<%-- 
    Document   : adminmenu
    Created on : 28 Feb, 2013, 2:43:11 AM
    Author     : sumit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.InputStream"%>
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
#doctorMenuLayer1 {
	position:absolute;
	width:300px;
	height:300px;
	z-index:1;
        left:25px;
}
#DoctorMenuLayer3 {
	position:absolute;
	width:300px;
	height:300px;
	top:200px;
        left:0px;
	z-index:2;
}
-->
        </style>
</head>
    <body> <%String mobile=null;
    String j=".jpg";
    session=request.getSession(false);
      String user=(String)session.getAttribute("login");
      
         Connection con=connection.con();
            PreparedStatement pt=con.prepareStatement("select mobile from Doctor where D_id=?");
            pt.setString(1,user);
ResultSet rs=pt.executeQuery();
if(rs.next()){mobile=rs.getString("mobile");
          }%>
  
        <div id="UserMenuLayer2">
          <div id="doctorMenuLayer1">
              <img src="Chansu/<%=mobile%>.jpg" height="200" width="200"/>	  
		  </div>
	      <div id="DoctorMenuLayer3">
	      <table height="300" border="0" cellpadding="0" cellspacing="0">
              
        <tr>
          <td width="300" height="50"><div align="center"><a href="DoctorEdit.do">EDIT PROFILE</a></div></td>
        </tr>
        <tr>
          <td width="300" height="50"><div align="center"><a href="DoctorList.do">DOCTOR LIST</a> </div></td>
        </tr>
        <tr>
          <td width="300" height="50"><div align="center"><a href="QuestionList1.do">QUESTIONS</a> </div></td>
        </tr>
        <tr>
          <td width="300" height="50"><div align="center"><a href="DoctorComplain.do"> COMPLAIN</a> </div></td>
        </tr>
        <tr>
          <td width="300" height="50"><div align="center"><a href="DoctorAppointmentInformation.do">APPOINTMENT</a> </div></td>
        </tr>
        
        
      </table></div>
	</div>
    </body>
</html>
