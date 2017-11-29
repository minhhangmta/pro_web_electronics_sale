package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Electronic Store | About </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            <!-- banner -->\n");
      out.write("            <div class=\"banner banner10\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h2>About Us</h2>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- //banner -->   \n");
      out.write("            <!-- breadcrumbs -->\n");
      out.write("            <div class=\"breadcrumb_dress\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.html\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span> Home</a> <i>/</i></li>\n");
      out.write("                        <li>About Us</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- //breadcrumbs --> \n");
      out.write("            <!-- about -->\n");
      out.write("            <div class=\"about\">\n");
      out.write("                <div class=\"container\">\t\n");
      out.write("                    <div class=\"w3ls_about_grids\">\n");
      out.write("                        <div class=\"col-md-6 w3ls_about_grid_left\">\n");
      out.write("                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse \n");
      out.write("                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat \n");
      out.write("                                cupidatat non proident, sunt in culpa qui officia deserunt mollit \n");
      out.write("                                anim id est laborum.</p>\n");
      out.write("                            <div class=\"col-xs-2 w3ls_about_grid_left1\">\n");
      out.write("                                <span class=\"glyphicon glyphicon-new-window\" aria-hidden=\"true\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-xs-10 w3ls_about_grid_left2\">\n");
      out.write("                                <p>Sunt in culpa qui officia deserunt mollit \n");
      out.write("                                    anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse \n");
      out.write("                                    cillum dolore eu fugiat nulla pariatur.</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"clearfix\"> </div>\n");
      out.write("                            <div class=\"col-xs-2 w3ls_about_grid_left1\">\n");
      out.write("                                <span class=\"glyphicon glyphicon-flash\" aria-hidden=\"true\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-xs-10 w3ls_about_grid_left2\">\n");
      out.write("                                <p>Sunt in culpa qui officia deserunt mollit \n");
      out.write("                                    anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse \n");
      out.write("                                    cillum dolore eu fugiat nulla pariatur.</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"clearfix\"> </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6 w3ls_about_grid_right\">\n");
      out.write("                            <img src=\"images/52.jpg\" alt=\" \" class=\"img-responsive\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"> </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- //about --> \n");
      out.write("            <!-- team -->\n");
      out.write("            <div class=\"team\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h3>Meet Our Team</h3>\n");
      out.write("                    <div class=\"wthree_team_grids\">\n");
      out.write("                        <div class=\"col-md-3 wthree_team_grid\">\n");
      out.write("                            <img src=\"images/t4.png\" alt=\" \" class=\"img-responsive\" />\n");
      out.write("                            <h4>Smith Allen <span>Manager</span></h4>\n");
      out.write("                            <div class=\"agileits_social_button\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\" class=\"facebook\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"twitter\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"google\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"pinterest\"> </a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 wthree_team_grid\">\n");
      out.write("                            <img src=\"images/t5.png\" alt=\" \" class=\"img-responsive\" />\n");
      out.write("                            <h4>Laura James <span>Designer</span></h4>\n");
      out.write("                            <div class=\"agileits_social_button\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\" class=\"facebook\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"twitter\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"google\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"pinterest\"> </a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 wthree_team_grid\">\n");
      out.write("                            <img src=\"images/t6.png\" alt=\" \" class=\"img-responsive\" />\n");
      out.write("                            <h4>Crisp Doe <span>Director</span></h4>\n");
      out.write("                            <div class=\"agileits_social_button\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\" class=\"facebook\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"twitter\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"google\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"pinterest\"> </a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 wthree_team_grid\">\n");
      out.write("                            <img src=\"images/t7.png\" alt=\" \" class=\"img-responsive\" />\n");
      out.write("                            <h4>Linda Rosy <span>Quality Checker</span></h4>\n");
      out.write("                            <div class=\"agileits_social_button\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\" class=\"facebook\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"twitter\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"google\"> </a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"pinterest\"> </a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"> </div>\n");
      out.write("                        <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis \n");
      out.write("                            voluptatibus maiores alias consequatur aut perferendis doloribus asperiores \n");
      out.write("                            repellat.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- //team -->\n");
      out.write("            <!-- team-bottom -->\n");
      out.write("            <div class=\"team-bottom\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h3>Are You Ready For Deals? Flat <span>30% Offer </span>on Mobiles</h3>\n");
      out.write("                    <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis \n");
      out.write("                        voluptatibus maiores alias consequatur aut perferendis doloribus asperiores \n");
      out.write("                        repellat.</p>\n");
      out.write("                    <a href=\"products.html\">Shop Now</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- //team-bottom -->\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
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
