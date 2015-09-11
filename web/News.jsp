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
        <title>JSP Page</title><script type="text/javascript">
    function validateForm(form)
  {
    if(form.subject.value == ""||form.news.value == "") {
      alert("Error: No field could be left blank");
      form.subject.focus();
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
    
      <div align="center" class="heading" >ADD_NEWS</div>
        <div align="center"><form action="AddNews.do" method="post" enctype="multipart/form-data" onsubmit=" return validateForm(this);"><table border="1">
            
<tr><td width="250" height="30"><div align="right" class="style4"> NEW_SUBJECT</div></td>
<td colspan="3"><input name="subject" type="text" size="50" maxlength="255"/></td>
</tr>



<tr><td width="250" height="30"><div align="right" class="style4">NEWS_DESCRIPTION:</div></td>
<td colspan="3"><input type="file" name="news"/></td></tr>




<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td></table>
        </form>
  </div>
    </div> 
        
    </body>
</html>