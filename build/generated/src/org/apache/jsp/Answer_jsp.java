package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pack.connection;
import java.sql.*;

public final class Answer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            alert(\"script work\");\n");
      out.write("            function ckeck(a,b)\n");
      out.write("            { \n");
      out.write("                alert(\"function work\");\n");
      out.write("                alert(a);\n");
      out.write("                alert(b);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write(" \n");
      out.write("         <link rel=\"stylesheet\" type=\"text/css\" href=\"mobilehealth.css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
/*String user_id=request.getParameter("user_id");
        String date=request.getParameter("date");
String time=request.getParameter("time");*/
        int p1=1;
 String m=(String)request.getAttribute("i");
 if(m!=null){
     int m1=Integer.parseInt(m);
 p1=p1+m1;
 }
 
       int i=1;       
        ResultSet rms=(ResultSet)request.getAttribute("Result");
if(rms.next()){
String user_id=rms.getString("patient_id");
     String date=rms.getString("date");
String time=rms.getString("time");
String Question=rms.getString("question");
String rol=rms.getString("role");

      out.write("\n");
      out.write("        <div id=\"UserInnerBodyLayer1\">\n");
      out.write("        <form action=\"finalAnswer.jsp?user_id=");
      out.print(user_id);
      out.write("&date=");
      out.print(date);
      out.write("&time=");
      out.print(time);
      out.write("&i=");
      out.print(p1);
      out.write("\" method=\"post\">      \n");
      out.write("       <table width=\"600\" border=\"1\">\n");
      out.write("            <th height=\"50\" class=\"heading\" colspan=\"6\"><div align=\"center\">Prescription</div></th>\n");
      out.write("<tr><td width=\"200\" height=\"30\"><div align=\"right\" class=\"style4\"> PAtient_ID</div></td>\n");
      out.write("<td colspan=\"5\">");
      out.print(user_id);
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr><td width=\"200\" height=\"30\"><div align=\"right\" class=\"style4\">QUESTION</div></td>\n");
      out.write("<td colspan=\"5\">");
      out.print(Question);
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr><td width=\"200\" height=\"30\"><div align=\"right\" class=\"style4\"> DATE</div></td>\n");
      out.write("<td colspan=\"5\">");
      out.print(date);
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr><td colspan=\"6\"><div align=\"center\" class=\"style4\">PRESCRIPTION</div></td></tr>\n");
      out.write("<tr><td width=\"250\" class=\"style4\"><div align=\"center\">MEDICINE_NAME</div></td><td colspan=\"1\" class=\"style4\">TIMING</td><td colspan=\"1\" class=\"style4\">USE FOR</td></tr>\n");

if(m==null){

      out.write("\n");
      out.write("<tr><td width=\"250\" height=\"30\"><textarea name=\"medicine");
      out.print(i);
      out.write("\" cols=\"40\" rows=\"1\"></textarea></td>\n");
      out.write("<td colspan=\"1\" width=\"100\"><input type=\"text\" name=\"time");
      out.print(i);
      out.write("\"/></td>\n");
      out.write("<td colspan=\"3\"><input type=\"text\" name=\"use");
      out.print(i);
      out.write("\"/></td><td>\n");
      out.write("    <a href=\"AddMedicineForUser.do?m=");
      out.print(i);
      out.write("&user_id=");
      out.print(user_id);
      out.write("&date=");
      out.print(date);
      out.write("&time=");
      out.print(time);
      out.write("\" onclick=\"return check(\"medicine");
      out.print(i);
      out.write("\",name=\"time");
      out.print(i);
      out.write("\")\">+</a></td></tr>\n");
}else{i=i+Integer.parseInt(m);
int p=1;
while(p<=i){

      out.write("\n");
      out.write("<tr><td width=\"250\" height=\"30\"><textarea name=\"medicine");
      out.print(p);
      out.write("\" cols=\"40\" rows=\"1\"></textarea></td>\n");
      out.write("<td colspan=\"1\" width=\"100\"><input type=\"text\" name=\"time");
      out.print(p);
      out.write("\"/></td><td colspan=\"3\">\n");
      out.write("    <input type=\"text\" name=\"use");
      out.print(p);
      out.write("\"/></td><td>\n");
      out.write("<a href=\"AddMedicineForUser.do?m=");
      out.print(i);
      out.write("&user_id=");
      out.print(user_id);
      out.write("&date=");
      out.print(date);
      out.write("&time=");
      out.print(time);
      out.write("\" onclick=\"return check(\"medicine");
      out.print(i);
      out.write("\",name=\"time");
      out.print(i);
      out.write("\")\">+</a></td></tr>\n");
p=p+1;}}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr><td><div align=\"right\">\n");
      out.write("  <input type=\"submit\" value=\"SUBMIT\"/>\n");
      out.write("</div></td></tr></table>\n");
      out.write("        </form>\n");
      out.write("        </div>");
}
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
