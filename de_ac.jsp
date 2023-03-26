<%-- 
    Document   : de_ac
    Created on : Oct 31, 2016, 1:16:51 PM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String email = request.getQueryString();
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    System.out.println("Print Value" + email);
    try {
        int i = st.executeUpdate("update reg set cyber = 'Yes', allows='Yes' where email = '" + email + "'");
        if (i != 0) {
            int in = st.executeUpdate("update cyber set cyber = 'Yes' where email = '" + email + "'");
            if (in != 0) {
                response.sendRedirect("admin_home.jsp?msg=User account is blocked..");
            } else {
                response.sendRedirect("admin_home.jsp?msgg=Error");
            }
        }
        System.out.println("ERROR");
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
