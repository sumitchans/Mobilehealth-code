<%-- 
    Document   : GetAppointment
    Created on : 12 Mar, 2013, 7:09:48 PM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>       <script type="text/javascript">
    function validateForm(form)
  {
      
      
    if(form.desc.value == ""||form.date.value=="") {
      alert("Error: No field could be left blank");
      form.desc.focus();
      return false;
    }

  else{
    var regd = new RegExp("^([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})\$");

   var date =form.date.value;

    var date = new Date(date);
    var usermonth = date.getMonth() + 1;
 var userdate = date.getDate();
 var useryear = date.getFullYear();
 var usertext = usermonth + "/" + userdate + "/" + useryear;
    
       
    var today = new Date();
//need to add one to get current month as it is start with 0
 var todayMonth = today.getMonth() + 1;
 var todayDay = today.getDate();
 var todayYear = today.getFullYear();
 var todayDateText = todayMonth + "/" + todayDay + "/" + todayYear;
 //


    var vdob = regd.test(date);

    
if(usertext==todayDateText)
    {
        
        return true;
    }
    
else
    {
     
    if(date.getDate() != userdate || (date.getTime()<today.getTime()))
    {
       
       var err_txt=("Please select a valid Date.\n")
            alert(err_txt);
            return false;
           
    }
    else{
        return true;
    }
    }
  }

}
</script>
        <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>


</head>
    <body>
              <%String Doctor_id=(String)request.getParameter("user_id");
              String spe=(String)request.getParameter("spe");
        session =request.getSession(false);
       session.setAttribute("Doctor_id",Doctor_id); 
String User_id=(String)session.getAttribute("login");
        %>
    <div id="UserInnerBodyLayer1">
        
        <form action="GetAppointment.do?Doctor_id=<%=Doctor_id%>" method="post" onsubmit=" return validateForm(this);"><table border="1">
            <th height="50" class="style2" colspan="4"><div align="center" class="style3">GET_APPOINTMENY</div></th>
<tr><td width="250" height="30"><div align="right" class="style4"> Doctor_id</div></td>
<td colspan="3"><!--input name="doctor_id" type="text" size="50" maxlength="255"  value= /--><%=Doctor_id%></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> Specialized</div></td>
<td colspan="3"><!--input name="doctor_id" type="text" size="50" maxlength="255"  value= /--><%=spe%></td>
</tr>



<tr><td width="250" height="30"><div align="right" class="style4">DESCRIPTION:</div></td>
<td colspan="3"><textarea name="desc" cols="50" rows="5"></textarea></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4"> DATE</div></td>
<td colspan="3"><input name="date" type="text" size="40" maxlength="255"  />yyyy-mm-date</td>
</tr>

<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td></table>
        </form>
  
    </div>
        
    </body>
</html>
