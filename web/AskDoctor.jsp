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
        <title>JSP Page</title><script type="text/javascript">
    function validateForm(form)
  {
    if(form.desc.value == "") {
      alert("Error: No field could be left blank");
      form.desc.focus();
      return false;
    }return true;}
</script>
        
        <link rel="stylesheet" type="text/css" href="mobilehealth.css" />
</head>
    <body>
              <%String Doctor_id=(String)request.getParameter("user_id");
                String spe=(String)request.getParameter("spe");
        session =request.getSession(false);
String User_id=(String)session.getAttribute("login");
        %>
    <div id="UserInnerBodyLayer1">
        
        <form action="AskDoctor.do?Doctor_id=<%=Doctor_id%>" method="post" onsubmit=" return validateForm(this);"><table border="1">
            <th height="50" class="heading" colspan="4"><div align="center">ASK_DOCTOR</div></th>
<tr><td width="250" height="30"><div align="right"> DOCTOR_ID</div></td>
<td colspan="3"><!--input name="doctor_id" type="text" size="50" maxlength="255"  value=<%=Doctor_id%> /--><%=Doctor_id%></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> Specialized</div></td>
<td colspan="3"><!--input name="doctor_id" type="text" size="50" maxlength="255"  value= /--><%=spe%></td>
</tr>


<tr><td width="250" height="30"><div align="right" >DESCRIPTION:</div></td>
<td colspan="3"><textarea name="desc" cols="50" rows="5"></textarea></td></tr>



<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td>
<td><div align="left">
  <input type="reset" value="RESET"/>
</div></td>
</tr></table>
        </form>
  
    </div>
        
    </body>
</html>
