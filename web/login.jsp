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
	width:940px;
	height:300px;
	z-index:1;
        top:100px;
        left:5px;
	border:1px, black;
	border-radius:10px;
	background-image:url(images/background-pics-for-websites-3.jpg);
	opacity:0.7;
	
}
#layer2{
position:absolute;
left:260px;
top:20px;
height:160px;
width:440px;}
#layer3{position:absolute;
left:250px;
top:225px;
height:50px;
width:440px;}
.style3 {
	font-size: 22px;
	
}
.style5 {font-size: 36px}
.style6 {font-size: 18px}
.style7 {font-size: 22px}
.style8 {font-size: 16px}
.style9 {font-size: 22px;}
-->
</style>    <script type="text/javascript" >
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

 
<div id="Layer1"><div id="layer2">
  <form action="Login.do" method="post">
<table width="360px" height="145" cellpadding="0px" cellspacing="0px">
    <tr><td width="110" height="40"><p align="center" class="style3">LOGIN_ID:</p></td><td width="250" height="40">
  <input type="text"  size="40" maxlength="255" name="user"/>
</td>
</tr><tr><td width="110" height="40"><p align="center"  class="style3">PASSWORD:</p></td><td width="250" height="40"> <input type="password"  size="40" maxlength="255" name="pass"/></td></tr>
<tr><td width="110" height="30"><div align="center">
  <input type="submit" value="submit" name="LOGIN"/>
</div></td>

</tr>

</table></form>
</div>
<div id="layer3">
  <p align="center" class="style3"><a href="reg.do" class="style7"> REGISTER HERE</a></p>
</div>
</div>


</body>
</html>
