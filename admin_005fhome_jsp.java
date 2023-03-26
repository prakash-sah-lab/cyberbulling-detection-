package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import network.DbConnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class admin_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <title>Online Social Network </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css\\admin.css\" type=\"text/css\" />\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"css\\gen.css\" type=\"text/css\" />-->\n");
      out.write("        <link href=\"css/tabel.css\" rel=\"stylesheet\"/>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body class=\"login\">\n");
      out.write("        <!-- header starts here -->\n");
      out.write("        <div id=\"facebook-Bar\">\n");
      out.write("            <div id=\"facebook-Frame\">\n");
      out.write("                <div id=\"logo\"> <a href=\"#\">Cyberbullying Detection based on Semantic-Enhanced Marginalized Denoising Auto-Encoder</a> </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <br></br><br><div id=\"header-main-right\">\n");
      out.write("                        <div id=\"header-main-right-nav\">\n");
      out.write("                            <form method=\"post\" action=\"#\" id=\"login_form\" name=\"login_form\">\n");
      out.write("                                <table border=\"0\" style=\"border:none\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <!--              <td ><input type=\"text\" id=\"email\" placeholder=\"Your Email Id\" name=\"mail\" class=\"inputtext radius1\" value=\"\"></td>\n");
      out.write("                                                      <td ><input type=\"password\" id=\"pass\" placeholder=\"Password\" name=\"pass\" class=\"inputtext radius1\" ></td>\n");
      out.write("                                                       <input type=\"hidden\" value=\"1\" name=\"status\" />-->\n");
      out.write("                                        <!--<td ><input type=\"submit\"  class=\"fbbutton\" name=\"login\" value=\"Login\" /></td>-->\n");
      out.write("                                        <!--<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"admin.jsp\" ></td>-->\n");
      out.write("                                        <br></br><br></br><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"index.jsp\" ><img src=\"img\\l22.jpg\" width=\"120\" height=\"60\" /></a></td>\n");
      out.write("\n");
      out.write("                                        <!--</tr>-->\n");
      out.write("                                        <!--            <tr>\n");
      out.write("                                                    <td><label><input id=\"persist_box\" type=\"checkbox\" name=\"persistent\" value=\"1\" checked=\"1\"/><a href=\"\" style=\"color:#ccc; text-decoration:none\">forgot your password?</a></label>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td><label><a href=\"\" style=\"color:#ccc; text-decoration:none\">forgot your password?</a></label></td>\n");
      out.write("                                                    </tr>-->\n");
      out.write("                                </table>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- header ends here -->\n");
      out.write("        <div id=\"nav\">\n");
      out.write("            <!--    <br></br><h4>&nbsp;&nbsp;&nbsp;&nbsp;Facebook helps you &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;connect and share &nbsp;&nbsp;&nbsp;&nbsp;with the people in your life.</h4>-->\n");
      out.write("            <br></br><a href=\"admin_home.jsp\">\n");
      out.write("                MALICIOUS USER</a><br><a href=\"b_user.jsp\">\n");
      out.write("                        BLOCKED USER DETAILS</a><br>\n");
      out.write("                    <br></br><h4 class=\"title\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Administrative</h4><img src=\"img\\a22.jpg\" alt=\"Mountain View\" style=\"width:304px;height:228px;\"></img>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"loginbox radius\">\n");
      out.write("                        <h2 style=\"color:#141823; text-align: left;\"></h2>\n");
      out.write("\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <!--<div class=\"box\" style=\"height: 200px;\">-->\n");
      out.write("                                <!--To do you work-->\n");
      out.write("                                <div style=\"border: 1px solid white;height: 350px;border-top-width: 0px;border-bottom-width: 0px; width: 700px\">\n");
      out.write("                                    <center><h3>MALICIOUS USER DETAILS</h3></center><br />\n");
      out.write("                                    <table border=\"1\" style=\"text-align: center;margin-left: 180px\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th style=\"text-align: center;width: 100px;\">User ID</th>\n");
      out.write("                                            <th style=\"text-align: center;width: 150px;\">Name</th>\n");
      out.write("                                            <th style=\"text-align: center;width: 600px;\">Email</th>\n");
      out.write("                                            <th style=\"text-align: center;width: 100px;\">Gender</th>\n");
      out.write("                                            <th style=\"text-align: center;width: 400px;\">Unwanted Message</th>\n");
      out.write("                                            <th style=\"text-align: center\">Block</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            ");

                                                Connection con = null;
                                                Statement st = null;
                                                ResultSet rs = null;
                                                try {
                                                    con = DbConnection.getConnection();
                                                    st = con.createStatement();
                                                    rs = st.executeQuery("select * from cyber");
                                                    while (rs.next()) {

                                            
      out.write("\n");
      out.write("                                            <td>");
      out.print(rs.getString("uid"));
      out.write("</td>     \n");
      out.write("                                            <td>");
      out.print(rs.getString("name"));
      out.write("</td>     \n");
      out.write("                                            <td>");
      out.print(rs.getString("email"));
      out.write("</td>     \n");
      out.write("                                            <td>");
      out.print(rs.getString("gender"));
      out.write("</td>     \n");
      out.write("                                            <td>");
      out.print(rs.getString("cybermessage"));
      out.write("</td>     \n");
      out.write("                                            <td><a href=\"b_ac.jsp?");
      out.print(rs.getString("id"));
      out.write("\"><font style=\"color: red\">block</a></font> </td>   \n");
      out.write("                                           \n");
      out.write("                                            <tr />\n");
      out.write("                                            ");
}
                                                } catch (Exception ex) {
                                                    ex.printStackTrace();
                                                }

                                            
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div><!--loginbox-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <p style=\"font-size:12px;\">\n");
      out.write("                        <!--  <center>\n");
      out.write("                            <a href=\"http://www.jpinfotech.org\">Jpinfotech</a>\n");
      out.write("                          </center>-->\n");
      out.write("                    </p>\n");
      out.write("\n");
      out.write("                    </body>\n");
      out.write("\n");
      out.write("                    </html>\n");
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
