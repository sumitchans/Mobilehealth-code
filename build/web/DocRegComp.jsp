<%-- 
    Document   : regcomp
    Created on : 20 Feb, 2013, 11:26:32 PM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>
  
    </head>
    
    <body><div id="UserInnerBodyLayer1">
          <div align="center" class="style2">Thank you for Registration          
            <table width="700" border="2" cellspacing="1" cellpadding="1">
              <tr>
                <td width="200" class="style1">USERNAME:</td>
                <td width="500" class="style1"><%=request.getAttribute("username")%></td>
              </tr>
              <tr>
                <td class="style1">FATHER_NAME</td>
                <td class="style1"><%=request.getAttribute("fname")%></td>
              </tr>
              <tr>
                <td class="style1">LOGIN_ID</td>
                <td class="style1"><%=request.getAttribute("D_id")%></td>
              </tr>
              <tr>
                <td class="style1">ADDRESS</td>
                <td class="style1"><%=request.getAttribute("address")%></td>
              </tr>
              <tr>
                <td class="style1">MOBILE</td>
                <td class="style1"><%=request.getAttribute("mobile")%></td>
              </tr>
              
            </table>
          </div>
  
     </div>
    </body>
</html>
