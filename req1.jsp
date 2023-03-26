<%-- 
    Document   : req1
    Created on : Aug 11, 2016, 11:44:41 AM
    Author     : java4
--%>


<%@page import="network.ThreadDemo"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%

    String strrr = request.getParameter("id");
    session.setAttribute("reqestid", strrr);
    System.out.println("get the value is :" + strrr);
    String id = (String) session.getAttribute("sesid");
    int i = 1;
    Integer retrive = null;
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from reg where id='" + id + "'");
    while (rs.next()) {
        retrive = rs.getInt("spam");
        System.out.println("spam Value=" + retrive);
    }
    int add = retrive + 1;
    System.out.println("here added " + add);
    int up = st.executeUpdate("update reg set spam ='" + add + "' where id = '" + id + "'");
    if (up != 0) {
        System.out.println("updated sucess..!");
        ThreadDemo demo = new ThreadDemo();
        demo.run();
        response.sendRedirect("request.jsp");
    }
%>