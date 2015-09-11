<%-- 
    Document   : template
    Created on : 16 Feb, 2013, 8:33:09 PM
    Author     : sumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="mobilehealth.css"/>

    </head>
    <body>
               
        <div id="maintempfull1"><table height="1065" width="1200" cellspacing="0" cellpadding="0">
                <tr><td height="350" width="1200"><tiles:insert attribute="header"/></td></tr>
                <tr><td height="600" width="1200"><div id="maintempmenu2"><table width="1200"  height="600"><tr><td width="250" height="600">
                                        <tiles:insert attribute="menu"/></td>
                   <td width="950" height="600"><div id="maintempbody4"><tiles:insert attribute="body"/></div></td></tr></table></div></td></tr>
 <tr><td height="100" width="1200">
   <tiles:insert attribute="footer"/></td></tr>
    </table> </div> </body>
</html>
