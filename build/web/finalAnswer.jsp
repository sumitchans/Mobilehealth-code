<%-- 
    Document   : fianlAnswer
    Created on : 9 Apr, 2013, 10:39:24 PM
    Author     : sumit
--%>

<%@page import="pack.connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%//ArrayList<String> ar=new ArrayList<String>;
      PreparedStatement prt=null;
      int an=0;
      Connection cn=connection.con();
      session=request.getSession(false);
      String Doctor_id=(String)session.getAttribute("login");
      String User_id=request.getParameter("user_id");
    String date=request.getParameter("date");
      String time=request.getParameter("time");
String i=request.getParameter("i");
      int p=Integer.parseInt(i);
int m=1;%>
<%while(m<=p){%><%--=request.getParameter("medicine"+m)%>:<%=request.getParameter("time"+m)%>:<%=request.getParameter("use"+m)--%>
<%String medicine=request.getParameter("medicine"+m);
 String time1=request.getParameter("time"+m);
String use=request.getParameter("use"+m); %>
<%if(medicine!=null&&time!=null&&use!=null){%>
     <%prt=cn.prepareStatement("insert into prescription(medicine_name, patient_id, Doctor_id, DATE, time_of_taking, treatment_area) values(?,?,?,CURDATE(),?,?)");
   prt.setString(1,medicine);
      prt.setString(2,User_id);
      prt.setString(3,Doctor_id);
      prt.setString(4,time1);
       prt.setString(5,use);
     an= prt.executeUpdate();  
%>      <%m++;}}%>
<%if(an>0){%><%PreparedStatement pmt1=cn.prepareStatement("Update Question set answer=? where patient_id=? and date=? and Doctor_id=? and time=?");
pmt1.setString(1,"yes");
pmt1.setString(2,User_id);
pmt1.setString(3,date);
pmt1.setString(4,Doctor_id);
pmt1.setString(5,time);
int prt2=pmt1.executeUpdate();
if(prt2>0){%>
<jsp:forward page="QuestionList1.do"/><%}}%>
    </body>
</html>
