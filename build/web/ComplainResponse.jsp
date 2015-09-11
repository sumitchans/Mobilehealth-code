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
    if(form.response.value == "") {
      alert("Error: No field could be left blank");
      form.response.focus();
      return false;
    }return true;}
</script>
    </head>
    <body>
        <%
String User_id=(String)request.getAttribute("User_id");
        %>
    <div id="UserInnerBodyLayer1">
        
        <form action="ComplainResponse.do?complainer_id=<%=User_id%>&date=<%=request.getAttribute("date")%>" method="post" onsubmit=" return validateForm(this);"><table border="1">
            <th height="50" class="heading" colspan="4"><div align="center">COMPLAIN_RESPONSE</div></th>
<tr><td width="250" height="30"><div align="right" class="style4"> COMPLAINER_NAME</div></td>
<td colspan="3"><%=request.getAttribute("User_name")%></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> COMPLAINER_ID</div></td>
<td colspan="3"><%=User_id%></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> COMPLAINER_SUBJECT</div></td>
<td colspan="3"><%=request.getAttribute("subject")%></td>
</tr>
<tr><td width="250" height="30"><div align="right" class="style4"> COMPLAINER_DESC</div></td>
<td colspan="3"><%=request.getAttribute("desc")%></td>
</tr>

<tr><td width="250" height="30"><div align="right" class="style4">RESPONSE</div></td>
<td colspan="3"><textarea name="response" cols="50" rows="5"></textarea></td></tr>



<%request.setAttribute("user_id",User_id);%>
<tr><td><div align="right">
  <input type="submit" value="SUBMIT"/>
</div></td></table>
        </form>
  
    </div>
        
    </body>
</html>