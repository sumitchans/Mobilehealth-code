<%-- 
    Document   : Answer
    Created on : 22 Mar, 2013, 1:17:48 PM
    Author     : sumit
--%>

<%@page import="pack.connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
         <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>
    </head>
    <body>
        <%/*String user_id=request.getParameter("user_id");
        String date=request.getParameter("date");
String time=request.getParameter("time");*/
        int p1=1;
 String m=(String)request.getAttribute("i");
 if(m!=null){
     int m1=Integer.parseInt(m);
 p1=p1+m1;
 }
 
       int i=1;       
        ResultSet rms=(ResultSet)request.getAttribute("Result");
if(rms.next()){
String user_id=rms.getString("patient_id");
     String date=rms.getString("date");
String time=rms.getString("time");
String Question=rms.getString("question");
String rol=rms.getString("role");
%>
        <div id="UserInnerBodyLayer1">
        <form action="finalAnswer.jsp?user_id=<%=user_id%>&date=<%=date%>&time=<%=time%>&i=<%=p1%>" method="post">      
       <table width="600" border="1">
            <th height="50" class="heading" colspan="6"><div align="center">Prescription</div></th>
<tr><td width="200" height="30"><div align="right" class="style4"> PAtient_ID</div></td>
<td colspan="5"><%=user_id%></td>
</tr>
<tr><td width="200" height="30"><div align="right" class="style4">QUESTION</div></td>
<td colspan="5"><%=Question%></td>
</tr>
<tr><td width="200" height="30"><div align="right" class="style4"> DATE</div></td>
<td colspan="5"><%=date%></td>
</tr>
<tr><td colspan="6"><div align="center" class="style4">PRESCRIPTION</div></td></tr>
<tr><td width="250" class="style4"><div align="center">MEDICINE_NAME</div></td><td colspan="1" class="style4">TIMING</td><td colspan="1" class="style4">USE FOR</td></tr>
<%
if(m==null){
%>
<tr><td width="250" height="30"><textarea name="medicine<%=i%>" cols="40" rows="1"></textarea></td>
<td colspan="1" width="100"><input type="text" name="time<%=i%>"/></td>
<td colspan="3"><input type="text" name="use<%=i%>"/></td><td>
    <a href="AddMedicineForUser.do?m=<%=i%>&user_id=<%=user_id%>&date=<%=date%>&time=<%=time%>">+</a>



</td></tr>
<%}else{i=i+Integer.parseInt(m);
int p=1;
while(p<=i){
%>
<tr><td width="250" height="30"><textarea name="medicine<%=p%>" cols="40" rows="1"></textarea></td>
<td colspan="1" width="100"><input type="text" name="time<%=p%>"/></td><td colspan="3">
    <input type="text" name="use<%=p%>"/></td><td>
<a href="AddMedicineForUser.do?m=<%=i%>&user_id=<%=user_id%>&date=<%=date%>&time=<%=time%>">+</a></td></tr>
<%p=p+1;}}%>



<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td></tr></table>
        </form>
        </div><%}%>
    </body>
</html>
