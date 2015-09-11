<%-- 
    Document   : Prescription
    Created on : 5 Apr, 2013, 4:02:01 PM
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
    <body><%int i=0;
    ResultSet rs1=(ResultSet)request.getAttribute("Result1");%>
   <%ResultSet rs2=(ResultSet)request.getAttribute("Result2");
   %>
        <div id="UserInnerBodyLayer1">
            <div align="center" class="heading">TREATMENT_ADVICE</div>
       <div id="PrescriptionLayer1">

           <div align="center" class="heading">AVAILABLE AT OUR STORE</div>
        <div>   <form action="bill.do" method="post">
               <table width="900" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="50" height="50"><div align="center">s_no</div></td>
                       <td width="100" height="50"><div align="center">medicine_name</div></td>
                       <td width="100" height="50"><div align="center">use for</div></td>
                 <td width="100" height="50"><div align="center">timing</div></td>
                     <td width="100" height="50"><div align="center">mfd date</div></td>
                 <td width="100" height="50"><div align="center">expiry date</div></td>
                 <td width="100" height="50"><div align="center">rate</div></td>
                   <td width="100" height="50"><div align="center">weight</div></td>
                     <td width="50" height="50"><div align="center">Available</div></td>
                   <td width="50" height="50"><div align="center">Quantity</div></td>
                    <td width="50" height="50"><div align="center">select</div></td>
                  </tr>
               <% 
               i++;
               while(rs1.next()){%>
               <tr><td  height="50"><div align="center"><%=i%></div></td>
                   <td  height="50"><div align="center"><%=rs1.getString("prescription.medicine_name")%></div></td>
                       <td  height="50"><div align="center"><%=rs1.getString("prescription.treatment_area")%> </div></td>
                 <td  height="50"><div align="center"><%=rs1.getString("prescription.time_of_taking")%></div></td>
                     <td  height="50"><div align="center"><%=rs1.getString("medicine.mfd_date")%></div></td>
                 <td  height="50"><div align="center"><%=rs1.getString("medicine.expiry_date")%></div></td>
                 <td  height="50"><div align="center"><%=rs1.getString("medicine.rate")%></div></td>
                   <td  height="50"><div align="center"><%=rs1.getString("medicine.weight")%></div></td>
                   <td  height="50"><div align="center"><%=rs1.getString("medicine.stock")%></div></td>
                   <td  height="50"><div align="center"><input type="text" name="p1<%=i%>"></div></td>
               <td  height="50"><div align="center"><input type="checkbox" name="p2<%=i%>"/></div></td>
            
               </tr>
                   <%i++;}%>
                 <tr> <td><input type="submit" value="submit"/></td></tr>
               </table></form>
           </div></div>
       
	    <div id="PrescriptionLayer2">
            
                <div align="center" class="heading">NOT AVAILABLE AT OUR STORE</div>
                <div align="center">
                     <table width="700" height="50" cellpadding="1" cellspacing="1" bordercolor="#990066" border="1" >
                   <tr><td width="120" height="50"><div align="center">s_no</div></td>
                       <td width="120" height="50"><div align="center">medicine_name</div></td>
                       <td width="120" height="50"><div align="center">use for</div></td>
                 <td width="120" height="50"><div align="center">timing</div></td>
                     
               <%int j=1; 
              while(rs2.next()){%>
               <tr><td width="120" height="50"><div align="center"><%=j%></div></td>
                   <td width="120" height="50"><div align="center"><%=rs2.getString("prescription.medicine_name")%></div></td>
                       <td width="120" height="50"><div align="center"><%=rs2.getString("prescription.treatment_area")%> </div></td>
                 <td width="120" height="50"><div align="center"><%=rs2.getString("prescription.time_of_taking")%></div></td>
       </tr>
                   <%}%>
               </table> </div>
                </div>
            </div>
    </div>
        
    </body>
</html>
