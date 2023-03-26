<%-- 
    Document   : report
    Created on : Oct 24, 2016, 11:19:12 AM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String msgg = (String) session.getAttribute("Smsg");
    String id = (String) session.getAttribute("sesid");
    String name = (String) session.getAttribute("sesname");
    String mail = (String) session.getAttribute("email");
    String gen = (String) session.getAttribute("sesgen");

    try {

        Connection con = DbConnection.getConnection();
        Statement st = con.createStatement();
        System.out.println("Print Value" + msgg);
        int i = st.executeUpdate("DELETE FROM timeline WHERE msg='" + msgg + "'");
        if (i != 0) {
            System.out.println("deleted valus from mysql DB");
            int in = st.executeUpdate("INSERT into cyber(uid, name, email, gender, cybermessage, cyber) values ('" + id + "', '" + name + "', '" + mail + "', '" + gen + "','" + msgg + "','No')");
            if (in != 0) {

                response.sendRedirect("time_line_up.jsp?msgggg=success");
            } else {
                response.sendRedirect("time_line_up.jsp?msgg=Error");
            }
        }
        System.out.println("Error");
    } catch (Exception EX) {
        EX.printStackTrace();
    }
%>
