<%-- 
    Document   : bill
    Created on : 5 Apr, 2013, 6:33:20 PM
    Author     : sumit
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="pack.connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>
    </head>
    <body><% Connection cn=connection.con();
       session=request.getSession(false);
        String User_id=(String)session.getAttribute("login"); 
    int sum=0;
   //ResultSet rs1=(ResultSet)request.getAttribute("Result1");%>
    <%
        PreparedStatement pmt=cn.prepareStatement("SELECT  prescription.medicine_name,medicine.mfd_date,medicine.expiry_date,medicine.rate,medicine.stock FROM prescription,medicine where patient_id=? and medicine.medicine_name=prescription.medicine_name");
pmt.setString(1,User_id);
ResultSet rs1=pmt.executeQuery();%>  
    <div id="UserInnerBodyLayer1">
            <div align="center" class="heading">YOUR BILL</div>
            
            <div>
                 <table width="800" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="50" height="50"><div align="center">s_no</div></td>
                       <td width="150" height="50"><div align="center">medicine_name</div></td>
                     <td width="100" height="50"><div align="center">mfd date</div></td>
                 <td width="100" height="50"><div align="center">expiry date</div></td>
                 <td width="100" height="50"><div align="center">rate</div></td>
 
                    <td width="50" height="50"><div align="center">Quantity</div></td>
                    <td width="100" height="50"><div align="center">total</div></td></tr>
                   <%int m=1,i=1;
                   while(rs1.next()){%>
                   <%String qw=request.getParameter("p2"+i);
                   String we=request.getParameter("p1"+i);
                   if(qw!=null&&we!=null){
                       
           
                   %>
                    <tr><td  height="50"><div align="center"><%=m%></div></td>
                   <td  height="50"><div align="center"><%=rs1.getString("prescription.medicine_name")%></div></td>
                     <td  height="50"><div align="center"><%=rs1.getString("medicine.mfd_date")%></div></td>
                 <td  height="50"><div align="center"><%=rs1.getString("medicine.expiry_date")%></div></td>
                 <td  height="50"><div align="center"><%=rs1.getString("medicine.rate")%></div></td>

                   <td height="50"><div align="center"><%=request.getParameter("p1"+i)%></div></td>
                   <%int rate=Integer.parseInt(rs1.getString("medicine.rate"));
                   int val1=0;
int qua=Integer.parseInt(request.getParameter("p1"+i));

val1=rate*qua;
sum=sum+val1;
int stock=Integer.parseInt(rs1.getString("medicine.stock"));
int avail=stock-qua;
 PreparedStatement pmt1=cn.prepareStatement("update medicine set stock=? where medicine_name=?");
pmt1.setInt(1,avail);
pmt1.setString(2,rs1.getString("prescription.medicine_name"));
int a=pmt1.executeUpdate();            
    PreparedStatement pmt12=cn.prepareStatement("insert into order_info(medicine_name,order_date,quantity,total,user_id) values(?,CURDATE(),?,?,?)");
pmt12.setString(1,rs1.getString("prescription.medicine_name"));
pmt12.setInt(2,qua);
pmt12.setInt(3,val1);
pmt12.setString(4,User_id);
int a1=pmt12.executeUpdate();
     
                   %>
               <td height="50"><div align="center"><%=val1%></div></td>
               </tr> 
                   
                   <%
                  }i++; m++;}%></table>
            </div>
       
            <div align="center">your bill:<%=sum%></div>
         <div align="center" class="headingstyle2">PLEASE PAY  YOUR BILL AT DELIVERY TIME</div>
         <%--//String s1=""+sum;
         PreparedStatement prt=cn.prepareStatement("insert into bill(total,patient_id,order_date) values(?,?,CURDATE())");
           prt.setInt(1,sum);
           prt.setString(2,User_id);
            int ap=prt.executeUpdate();                 --%>
        </div>
     
        
    </body>
</html>
