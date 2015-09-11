<%-- 
    Document   : admin
    Created on : 27 Feb, 2013, 3:22:48 AM
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
        <script type="text/javascript">
    function validateForm(form)
  {
    if(form.username.value == ""||form.fname.value == ""||form.email.value==""||form.pass.value == ""||form.address.value == ""||form.mobile.value == ""||form.sex.value == "") {
      alert("Error: No field could be left blank");
      form.username.focus();
      return false;
    }
    if(isNaN(form.mobile.value)|| (form.mobile.value.length <10) || form.mobile.value.length >10){
        alert("Enter a valid mobile no. (like 9999000000)");
        form.mobile.focus();
        return false;
    }return true;}
</script>
        <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>
	
   
        
    </head>
    <body>

	<div id="UserInnerBodyLayer1"><%session=request.getSession(false);
        if(session.getAttribute("login")!=null){%><%
               String  user=(String)session.getAttribute("login");
          Connection cn=connection.con();      
          PreparedStatement pr=cn.prepareStatement("select role from login where login_id=?");
    pr.setString(1,user);
ResultSet rt=pr.executeQuery();
                if(rt.next()){ if(rt.getString("role").equalsIgnoreCase("user")){%><%PreparedStatement pt=cn.prepareStatement("select *from patient where p_id=?");
                pt.setString(1,user);
                ResultSet rp=pt.executeQuery();
                if(rp.next()){%><form action="Edit.do" method="post" onsubmit="return validateForm(this)"><table width="700" cellsapcing="0" cellpadding="0">
<th height="50" class="style21" colspan="4"><center>EDIT_PROFILE</center></th>
<tr><td width="150" height="30"><div align="right" class="style41"> NAME:</div></td>
<td colspan="3"><input name="username" type="text" value=<%=rp.getString("name")%>  size="50" maxlength="255"/></td>
</tr>
<tr><td width="150" height="30"><div align="right" class="style41"> PATIENT_ID:</div></td>
<td colspan="3"><font size="10"><%=rp.getString("p_id")%></font></td>
</tr>
<tr><td width="150" height="30"><div align="right" class="style41"> FATHER_NAME:</div></td>
<td colspan="3"><input name="fname" type="text" value=<%=rp.getString("fname")%> size="50" maxlength="255"/></td></tr>
<tr><td width="150" height="30"><div align="right" class="style41">EMAIL_ID:</div></td>
<td colspan="3"><input name="email" type="text" value=<%=rp.getString("email_id")%> size="50" maxlength="255"/></td></tr>

<tr><td width="150" height="30"><div align="right" class="style41"> PASSWORD:</div></td>
<td colspan="3"><input name="pass" type="PASSWORD" value=<%=rp.getString("password")%> size="50" maxlength="255"/></td></tr>
<tr><td width="150" height="30"><div align="right" class="style41">ADDRESS:</div></td>
<td colspan="3"><textarea name="address"  cols="50"  rows="5"><%=rp.getString("address")%></textarea></td></tr>
<tr><td width="150" height="30"><div align="right" class="style41"> MOBILE_NO:</div></td>
<td colspan="3"><input  type="text" name="mobile" value=<%=rp.getString("mobile")%> size="10"/></td></tr>
<tr><td width="150" height="30"><div align="right" class="style41"> SEX:</div></td>
<td width="150">
      <input type="text" value=<%=rp.getString("sex")%> name="sex"/></td>
</tr>
<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td></td></tr></table></form>
<%}%>

<%}%><% else{if(rt.getString("role").equalsIgnoreCase("doctor")){%><%PreparedStatement pt=cn.prepareStatement("select * from doctor where D_id=?");
                pt.setString(1,user);
                ResultSet rp=pt.executeQuery();
                if(rp.next()){%><form action="DoctorEditProfile.do" method="post" ><table width="700" cellsapcing="0" cellpadding="0">
<th height="50" class="style21" colspan="4"><center>EDIT_PROFILE</center></th>

<tr><td width="150" height="30"><div align="right" class="style41"> DOCTOR_ID:</div></td>
<td colspan="3"><font size="10"><%=rp.getString("D_id")%></font></td>
</tr>

<tr><td width="150" height="30"><div align="right" class="style41">EMAIL_ID:</div></td>
<td colspan="3"><input name="email" type="text" value=<%=rp.getString("Email_id")%> size="50" maxlength="255"/></td></tr>

<tr><td width="150" height="30"><div align="right" class="style41"> PASSWORD:</div></td>
<td colspan="3"><input name="pass" type="PASSWORD" value=<%=rp.getString("password")%> size="50" maxlength="255"/></td></tr>
<tr><td width="150" height="30"><div align="right" class="style41">ADDRESS:</div></td>
<td colspan="3"><textarea name="address"  cols="50"  rows="5"><%=rp.getString("address")%></textarea></td></tr>
<tr><td width="150" height="30"><div align="right" class="style41"> MOBILE_NO:</div></td>
<td colspan="3"><input  type="text" name="mobile" value=<%=rp.getString("mobile")%> size="10"/></td></tr>

<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td></td></tr></table></form>
<%}%>
                    <%}%><%}}}%>
	 
	
	</div>
    </body>
</html>
