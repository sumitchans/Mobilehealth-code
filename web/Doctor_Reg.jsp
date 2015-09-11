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
    if(form.username.value == ""||form.fname.value == ""||form.email.value==""||form.pass.value == ""||form.address.value == ""||form.mobile.value == ""||form.sex.value == ""||form.collegename.value == ""||form.year.value == ""||form.special.value == ""||form.file.value == "") {
      alert("Error: No field could be left blank");
      form.username.focus();
      return false;
    }
    if(isNaN(form.mobile.value)|| (form.mobile.value.length <10) || form.mobile.value.length >10){
        alert("Enter a valid mobile no. (like 9999000000)");
        form.mobile.focus();
        return false;
    }
     if(isNaN(form.year.value)|| (form.year.value.length <4) || form.year.value.length >4){
        alert("Enter a valid  year (like 2004)");
        form.mobile.focus();
        return false;}return true;}
</script>
<link rel="stylesheet" type="text/css" href="mobilehealth.css"/>


</head>

<body>

<div id="UserInnerBodyLayer1">
<form action="DocReg.do" method="post" enctype="multipart/form-data" onsubmit=" return validateForm(this);"><table width="700" cellsapcing="0" cellpadding="0">
<th height="50" class="style2" colspan="4"><div align="center" class="style3">REGISTRATION_FORM</div></th>
<tr><td width="250" height="30"><div align="right" class="style4"> NAME:</div></td>
<td colspan="3"><input name="username" type="text" size="50" maxlength="255"/></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> FATHER_NAME:</div></td>
<td colspan="3"><input name="fname" type="text" size="50" maxlength="255"/></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4">EMAIL_ID:</div></td>
<td colspan="3"><input name="email" type="text" size="50" maxlength="255"/></td></tr>

<tr><td width="250" height="30"><div align="right" class="style4"> PASSWORD:</div></td>
<td colspan="3"><input name="pass" type="PASSWORD" size="50" maxlength="255"/></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4">ADDRESS:</div></td>
<td colspan="3"><textarea name="address" cols="50" rows="5"></textarea></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4"> MOBILE_NO:</div></td>
<td colspan="3"><input  type="text" name="mobile" size="10"/></td></tr><br />
<tr><td width="250" height="30"><div align="right" class="style4"> SEX:</div></td>
<td width="150">
      <input type="text" name="sex"/></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> COLLEGE:</div></td>
<td width="150">
      <input type="text" name="collegename"/></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> PASSING YEAR:</div></td>
<td width="150">
      <input type="text" name="year"/></td>
</tr><tr><td width="250" height="30"><div align="right" class="style4"> SPECIALIZATION:</div></td>
<td width="150">
      <input type="text" name="special"/></td></tr>
<tr><td width="250" height="30"><div align="right" class="style4"> PHOTO:</div></td>
<td width="150">
      <input type="file" name="file"/></td></tr>

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

