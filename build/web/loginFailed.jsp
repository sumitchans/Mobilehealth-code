<%-- 
    Document   : login
    Created on : 16 Feb, 2013, 4:16:14 PM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:950px;
	height:650px;
	z-index:1;
        top:0px;
        left:0px;
	border:1px, black;
	border-radius:0px;
	background-image:url(images/background-pics-for-websites-3.jpg);

	
}
#layer2{
position:absolute;
left:300px;
top:100px;
height:150px;
width:400px;}
#layer5{
position:absolute;
left:300px;
top:20px;
height:50px;
width:400px;}
#layer3{position:absolute;
left:300px;
top:270px;
height:50px;
width:400px;}
#layer4{position:absolute;
left:150px;
top:330px;
height:50px;
width:600px;}
.style3 {
	font-size: 12px;
	font-weight: bold;
}
.style5 {font-size: 36px}
.style6 {font-size: 18px}
.style7 {font-size: xx-large}
.style8 {font-size: 16px}
.style9 {font-size: 24px; }
.style10 {color: #0000FF}
.style11 {font-size: 12mm}
-->
</style>
    <script type="text/javascript" >
    function preventBack()
    {
        window.history.forward();
        
    }
    setTimeout("preventBack()",0);
    window.onunload=function()
    {
        null
    };
    
</script>
</head>

<body>

 
<div id="Layer1"><div class="style11" id="layer5">
  <div align="center" class="style10">LOGIN FAILED</div>
</div>
<div id="layer2">
  <form action="Login.do" method="post">
<table width="360px" height="145" cellpadding="0px" cellspacing="0px">
<tr><td width="110" height="40"><p align="center">LOGIN_ID:</p></td><td width="250" height="40">
  <input type="text"  size="40" maxlength="255" name="user"/>
</td>
</tr><tr><td width="110" height="40"><p align="center">PASSWORD:</p></td><td width="250" height="40"> <input type="password"  size="40" maxlength="255" name="pass"/></td></tr>
<tr><td width="110" height="30"><div align="center">
  <input type="submit" value="submit" name="LOGIN"/>
</div></td>

</tr>

</table></form>
</div>
<div id="layer3">
  <p align="center" class="style3"><a href="reg.do" class="style7"> REGISTER HERE</a></p>
</div>
<div id="layer4">
  <p align="center" class="style10">SORRY! EITHER YOU HAVE NOT ENTERED RIGHT USERNAME OR PASSWORD OTHERWISE YOU HAVE NOT REGISTER WITH US...</p>
</div>
</div>


</body>
</html>
