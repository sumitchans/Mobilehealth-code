<%-- 
    Document   : register
    Created on : 16 Feb, 2013, 11:58:27 PM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:0px;
	top:5px;
	width:950px;
	height:645px;
	z-index:1;
	background-color:#00CCFF;
	
	
}
.style2 {
	font-size: 35px;
	
}
.style3 {font-family: Verdana, Arial, Helvetica, sans-serif;
color: #FFFFFF; }
.style4 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #FFFFFF;
	font-size: 18px;

}
.style5 {font-size: 18px}
-->

</style>

</head>

<body>

<div id="Layer1">
<form action="Register.do" method="post" name="registerForm" onsubmit="return validateForm(this)"><table width="900" cellsapcing="0" cellpadding="0">
<th height="50" class="style2" colspan="4"><div align="center" class="style3">PATIENT REGISTRATION_FORM</div></th>
<tr><td width="250" height="30">
        <div align="right" class="style4"> NAME:</div></td>
<td colspan="3"><label for="username"></label><input name="username" type="text" size="50" maxlength="255"/></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> FATHER_NAME:</div></td>
<td colspan="3"><label for="fname"></label><input name="fname" type="text" size="50" maxlength="255"/></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4">EMAIL_ID:</div></td>
<td colspan="3"><label for="email"></label><input name="email" type="text" size="50" maxlength="255"/></td></tr>

<tr><td width="250" height="30"><div align="right" class="style4"> PASSWORD:</div></td>
<td colspan="3"><label for="pass"></label><input name="pass" type="PASSWORD" size="50" maxlength="255"/></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4">ADDRESS:</div></td>
<td colspan="3"><label for="address"></label><textarea name="address" cols="50" rows="5"></textarea></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4"> MOBILE_NO:</div></td>
<td colspan="3"><label for="mobile"></label><input  type="text" name="mobile" size="10"/></td></tr><br />
<tr><td width="250" height="30"><div align="right" class="style4"> SEX:</div></td>
<td width="150">
    <label for="sex"></label>  <input type="text" name="sex"/></td>
</tr>
<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td><td><blockquote>
  <blockquote>
    <p>
      <input type="reset" value="RESET"/>
    </p>
  </blockquote>
</blockquote></td>
</tr>



</table>
</form></div>
</body>
</html>

