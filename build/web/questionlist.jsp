<%-- 
    Document   : questionlist
    Created on : 4 Apr, 2013, 12:06:11 AM
    Author     : sumit
--%>

<%@page import="java.sql.ResultSet"%>
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
         <%ResultSet rs=(ResultSet)request.getAttribute("Res");%>
         <div align="center" class="heading">QUESTION LIST</div>
                <div align="center">   <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr>
                       <td width="140" height="50"><div align="center">patient_id</div></td>
                 <td width="140" height="50"><div align="center">QUESTION</div></td>
                  <td width="140" height="50"><div align="center">DATEANDTIME</div></td>
                   <td width="140" height="50"><div align="center">ROLE</div></td>
                 <td width="140" height="50">
                     <div align="center">ANSWER</div></td>
                 <td width="140" height="50"><div align="center">DELETE</div></td></tr>
          <%while(rs.next()){%><%
String question=rs.getString("question");        
request.setAttribute("question",question);%>
                   <tr>
                       <td width="140" height="50"><div align="center"><%=rs.getString("patient_id")%></div></td>
                      
                 <td width="140" height="50"><div align="center"><%=rs.getString("question")%></div></td>
                  
                  <td width="140" height="50"><div align="center"><%=rs.getString("date")%>:<%=rs.getString("time")%></div></td>
  
                  <td width="140" height="50"><div align="center"><%=rs.getString("role")%></div></td>
          
                  <td width="140" height="50"><div align="center"><a href="Answer.do?user_id=<%=rs.getString("patient_id")%>&date=<%=rs.getString("date")%>&time=<%=rs.getString("time")%>">Answer</a></div></td>
                 <td width="140" height="50"><div align="center"><a href="DeleteQuestion.do?user_id=<%=rs.getString("patient_id")%>&date=<%=rs.getString("date")%>&time=<%=rs.getString("time")%>">DeleteQuestion</a></div></td></tr>
             <%}%>    </table> </div>
          <%--=(String)request.getAttribute("Res1")--%>
        </div>
    </body>
</html>
