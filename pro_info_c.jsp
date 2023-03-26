<%-- 
    Document   : pro_info_c
    Created on : Apr 20, 2016, 2:59:36 PM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String school = request.getParameter("school");
      String college = request.getParameter("college");
        String emp = request.getParameter("emp");
        System.out.println("get profile information"+school+college+emp);
           String j = request.getQueryString();
        Connection con = DbConnection.getConnection();
     Statement st =con.createStatement();
  String  Semail=(String)session.getAttribute("seEmail");
     System.out.println("Email id"+Semail);
    int i = st.executeUpdate("update reg set sch = '" + school + "', col = '" + college + "', emp ='" + emp + "', allows='No' where mail = '" + Semail + "'");
    if (i != 0) {
        response.sendRedirect("index.jsp?msg=secess");
    } else {
        response.sendRedirect("pro_info.jsp?msgg=Error");
    }
%>