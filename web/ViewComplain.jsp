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
      <div class="style1" id="ViewComplainLayer2">
        <div align="center" class="style2">C<span class="style3">COMPLAIN</span></div>
      </div>
	    <div id="ViewComplainLayer3">
               
	      <table width="700" height="50" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="350"><div align="center"><a href="ComplainList1.do?User=<%="doctor"%>">DOCTOR</a></div></td>
              <td width="350"><div align="center"><a href="ComplainList1.do?User=<%="user"%>">PATIENT</a></div></td>
      
            </tr>
          </table>
	    </div>
		<div id="ViewComplainLayer4">
                 <%
                 
ResultSet rs=(ResultSet)request.getAttribute("Result");

 if(rs!=null)
         {%>
 <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr>
                       <td width="140" height="50"><div align="center">Complainer_id</div></td>
                 <td width="140" height="50"><div align="center">Date_of_complain</div></td>
                 <td width="140" height="50"><div align="center">Response</div></td>
                 <td width="140" height="50"><div align="center">Delete</div></td>
                   </tr>
      <%while(rs.next()){%>
     <%
      %><tr>
                       <td width="140" height="50"><div align="center"><%=rs.getString("Complainer_id")%></div></td>
                 <td width="140" height="50"><div align="center"><%=rs.getString("date")%></div></td>
                 <td width="140" height="50"><div align="center"><a href="Response.do?User_id=<%=rs.getString("Complainer_id")%>&date=<%=rs.getString("date")%>">Response</a></div></td>
                 <td width="140" height="50"><div align="center"><a href="Complaindelete.do?User_id=<%=rs.getString("Complainer_id")%>&date=<%=rs.getString("date")%>">Delete</a></div></td>
                   </tr>
        <%}%>
        </table>
 
 <%}%>




               </div>
    </div>
 
    </body>
</html>
