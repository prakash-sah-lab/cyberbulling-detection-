<%-- 
    Document   : req
    Created on : Aug 10, 2016, 1:54:28 PM
    Author     : java4
--%>

<%@page import="network.ThreadDemo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String strrr = request.getParameter("id");
    session.setAttribute("reqestid", strrr);
    String id = (String) session.getAttribute("sesid");
    String name = (String) session.getAttribute("sesname");
    String email = (String) session.getAttribute("email");
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("insert into demo(id, name, mail) values ('" + id + "','" + name + "','" + email + "')");
        if (i != 0) {
            ThreadDemo demo = new ThreadDemo();
            demo.run();
            response.sendRedirect("request.jsp?msg=success");
        } else {
            response.sendRedirect("index.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }








%>