<%-- 
Document   : loginaction
Created on : Feb 23, 2016, 3:43:53 PM
Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String name = request.getParameter("name");
    session.setAttribute("Names", name);
    System.out.println("Name for image update session" + name);
    String sname = request.getParameter("uname");
    String pass = request.getParameter("pass");
    session.setAttribute("Password", pass);
    System.out.println("password" + pass);
    int status = Integer.parseInt(request.getParameter("status"));
    String mail = request.getParameter("mail");
    session.setAttribute("seEmail", mail);
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gen = request.getParameter("gen");
    String phone = request.getParameter("phone");
//    String com = request.getParameter("com");
    String command = request.getParameter("command");
    String key = "Yes";

    String cat = request.getParameter("cat");
    String word = request.getParameter("word");

    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from reg where mail='" + mail + "' AND Pass='" + pass + "' AND allows='No'");
                    if (rs.next()) {
                        session.setAttribute("email", rs.getString("mail"));
                        session.setAttribute("sesname", rs.getString("name"));
                        session.setAttribute("sesgen", rs.getString("gen"));
                        session.setAttribute("sesid", rs.getString("id"));
                        response.sendRedirect("uhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("home.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into admin (word, bad) values ('" + cat + "','" + word + "')");
                    if (i != 0) {
                        response.sendRedirect("b_add.jsp?msg=success");
                    } else {
                        response.sendRedirect("b_add.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 3:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg(name, sname, mail, email, dob, pass, gen) values ('" + name + "','" + sname + "','" + mail + "','" + email + "','" + dob + "','" + pass + "','" + gen + "')");
                    if (i != 0) {

                        response.sendRedirect("img_up.jsp?msg=success");
                    } else {
                        response.sendRedirect("index.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 5:
                try {
                    rs = st.executeQuery("select * from reg where yyys='" + pass + "' AND role='Soldier'");
                    if (rs.next()) {
                        response.sendRedirect("s_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("s_one_p.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 6:
                try {
                    rs = st.executeQuery("select * from reg where yyys='" + pass + "' AND role='Commander'");
                    if (rs.next()) {

                        response.sendRedirect("c_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("c_one_p.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

                break;

            case 8:
                try {
                    if (name.equalsIgnoreCase("Admin") && pass.equalsIgnoreCase("Admin")) {
                        response.sendRedirect("admin_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("admin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 9:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg(name, sname, mail, email, dob, pass, gen) values ('" + name + "','" + sname + "','" + mail + "','" + email + "','" + dob + "','" + pass + "','" + gen + "')");
                    if (i != 0) {

                        response.sendRedirect("img_up.jsp?msg=success");
                    } else {
                        response.sendRedirect("index.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>