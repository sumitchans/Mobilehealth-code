package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class News_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title><script type=\"text/javascript\">\n");
      out.write("    function validateForm(form)\n");
      out.write("  {\n");
      out.write("    if(form.subject.value == \"\"||form.news.value == \"\") {\n");
      out.write("      alert(\"Error: No field could be left blank\");\n");
      out.write("      form.subject.focus();\n");
      out.write("      return false;\n");
      out.write("    }return true;}\n");
      out.write("</script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"mobilehealth.css\"/>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("        ");

String User_id=(String)session.getAttribute("login");
        
      out.write("\n");
      out.write("    <div id=\"UserInnerBodyLayer1\">\n");
      out.write("    \n");
      out.write("      <div align=\"center\" class=\"heading\" >ADD_NEWS</div>\n");
      out.write("        <div align=\"center\"><form action=\"AddNews.do\" method=\"post\" enctype=\"multipart/form-data\" onsubmit=\" return validateForm(this);\"><table border=\"1\">\n");
      out.write("            \n");
      out.write("<tr><td width=\"250\" height=\"30\"><div align=\"right\" class=\"style4\"> NEW_SUBJECT</div></td>\n");
      out.write("<td colspan=\"3\"><input name=\"subject\" type=\"text\" size=\"50\" maxlength=\"255\"/></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr><td width=\"250\" height=\"30\"><div align=\"right\" class=\"style4\">NEWS_DESCRIPTION:</div></td>\n");
      out.write("<td colspan=\"3\"><input type=\"file\" name=\"news\"/></td></tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr><td><div align=\"right\">\n");
      out.write("  <input type=\"submit\" value=\"SUBMIT\"/>\n");
      out.write("</div></td></table>\n");
      out.write("        </form>\n");
      out.write("  </div>\n");
      out.write("    </div> \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>");
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
