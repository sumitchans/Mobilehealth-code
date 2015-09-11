<%-- 
    Document   : DoctorAppointmentInformation
    Created on : 22 Mar, 2013, 1:19:08 PM
    Author     : sumit
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack.connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div id="UserInnerBodyLayer1">
            <%ArrayList<String> arr=new ArrayList<String>();
           
            ResultSet rps=(ResultSet)request.getAttribute("Result");
            if(rps!=null){%>
            <%-- Connection cn=connection.con();
    session=request.getSession(false);
   String User_id=(String)session.getAttribute("login");
   PreparedStatement pt=cn.prepareStatement("select * from appointment where Doctor_id=?");
   pt.setString(1,User_id);
   ResultSet rps=pt.executeQuery();
   
 --%>  <div align="center" class="heading">APPOINTMENT INFORMATION</div>
                <div align="center"> 
            <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="140" height="50"><div align="center">NAME</div></td>
                       
                       <td width="140" height="50"><div align="center">PROBLEM</div></td>
                           <td width="140" height="50"><div align="center">DATE</div></td>
                 <td width="140" height="50"><div align="center">MEETING_TIME</div></td>
                <td width="140" height="50"><div align="center">SUBMIT</div></td>
                 <td width="140" height="50"><div align="center">DELETE</div></td>
                   </tr>
          <%while(rps.next()){ String date=rps.getString("DateANDTime");%>
        <tr>  <form action="AppointmentConfirm.do?patient_id=<%=rps.getString("appointment.patient_id")%>&date=<%=rps.getString("DateANDTime")%>" method="post"> <!--table width="700"  cellpadding="1" cellspacing="1" bordercolor="#990066" border="1"-->
                   <td width="140" height="50"><div align="center"><%=rps.getString("appointment.patient_id")%></div></td>
                       <td width="140" height="50"><div align="center"><%=rps.getString("description")%></div></td>
                           <td width="140" height="50"><div align="center"><%=date%></div></td>
     <% arr.add(date);%>
                           <%String time=rps.getString("response_time");%>
       <%if(time==null){%>
                 <td width="140" height="50"><div align="center"><input type="text" name="time" lenght="30"/></div></td>

<td width="140" height="50"><div align="center"><input type="submit" value="submit"/></div></td>
 <%}else{%>  
 <td width="140" height="50"><div align="center"><%=time%></div></td>
  <td width="140" height="50"><div align="center"><a href="AppointmentTimeChange.do?user_id=<%=rps.getString("patient_id")%>&doctor=<%=rps.getString("Doctor_id")%>&date=<%=rps.getString("DateANDTime")%>">CHANGE</a></div></td><%}%>
<td width="140" height="50"><div align="center"><a href="DeleteAppointment.do?user_id=<%=rps.getString("patient_id")%>&doctor=<%=rps.getString("Doctor_id")%>&date=<%=rps.getString("DateANDTime")%>">DELETE</a></div></td>
               
           </form>  </tr>    <%}%>  </table><%}%> </div>
                      <%Iterator<String> it=arr.iterator();
                      %>
             <%--=request.getAttribute("doctor")--%>
         <div align="center"><form action="sortAppointmentInformation.do" method="post">
 <select name="dropdown">
<%while(it.hasNext()){String date1=it.next();%>
<option value="<%=date1%>"><%=date1%></option>
<%}%>
</select>
<input type="submit" value="Submit" /></form></div>  
        </div>
          
    </body>
</html>
