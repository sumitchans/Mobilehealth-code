<%-- 
    Document   : Complain
    Created on : 16 Mar, 2013, 3:42:41 AM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
    function validateForm(form)
  {
    if(form.de.value == ""||form.subject.value=="") {
      alert("Error: No field could be left blank");
      form.de.focus();
      return false;
    }return true;}
</script>
        
        <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>

</head>
    <body>
        <%
String User_id=(String)session.getAttribute("login");
        %>
    <div id="UserInnerBodyLayer1">
      
     
      <div id="GetAppointmentLayer2">
          
      <div align="center" class="heading">COMPLAINT</div></div>
	    <div id="GetAppointmentLayer3">
	    <table width="700" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="350" height="50"><div align="center"><a href="UserComplainResponse.do">Response</a></div></td>
            <td width="350"><div align="center"><a href="ApplyForComplain.do">Apply for complain</a></div></td>
          </tr>
        </table>
	  </div>
      <div id="GetAppointmentLayer4">    <form action="Complain.do" method="post" onsubmit=" return validateForm(this);"><table border="1">
            
<tr><td width="250" height="50"><div align="right" class="style4"> SUBJECT</div></td>
<td width="450"><input name="subject" type="text" size="50" maxlength="255"/></td>
</tr>



<tr><td width="250" ><div align="right" class="style4">DESCRIPTION:</div></td>
<td width="450"><textarea name="de" cols="50" rows="5"></textarea></td></tr>




<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td>
              <td><div align="left">
  <input type="reset" value="RESET"/>
</div></td></tr></table>
        </form>
  </div>
    </div>
        
    </body>
</html>
