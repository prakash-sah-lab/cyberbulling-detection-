<%-- 
    Document   : report
    Created on : Oct 24, 2016, 11:19:12 AM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    String block = (String) session.getAttribute("Smsg");
    System.out.println("value get is " + block);
    boolean bol = false;

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/osn", "root", "root");
    Statement st = con.createStatement();
    String Query = "select * from admin";
    ResultSet rs = st.executeQuery(Query);
    while (rs.next()) {
        String val1 = rs.getString("bad");
        System.out.println("val1 is :" + val1);
        if (block.indexOf(val1) >= 0) {

            response.sendRedirect("report.jsp?" + block);

            bol = false;
            break;
        } else {
            bol = true;
        }
    }
    if (bol == true) {
        response.sendRedirect("time_line_up.jsp?" + block);
    }

%>

