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
               
        <div id="maintempfull1"><table height="1102" width="1200" cellspacing="0" cellpadding="0">
                <tr><td height="350" width="1200"><tiles:insert attribute="header"/></td></tr>
                <tr><td height="650" width="1200"><div id="maintempmenu2"><table width="1200"  height="600"><tr>
                   <td width="1200" height="650"><div id="Usertempbody1">
                     <div id="UserHeaderLayer1"><tiles:insert attribute="userheader"/></div>
                     <div id="UserMenuLayer2"><tiles:insert attribute="usermenu"/></div> <div id="UserbodyLayer3"><tiles:insert attribute="userbody"/></div>
                   </div></td></tr></table></div></td></tr>
 <tr><td height="100">
   <tiles:insert attribute="footer"/></td></tr>
       </table> </div> </body>
</html>
