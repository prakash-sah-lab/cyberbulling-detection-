<%@page import="java.util.UUID"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    int uid;
String name=(String)session.getAttribute("sesname");
//String email=(String)session.getAttribute("email");
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT COUNT(*) AS UserCount FROM timeline WHERE name ='"+name+"'");
                   if (rs.next())
                     {
                         uid = rs.getInt("UserCount");    
                        System.out.println("Count print"+uid);                                                       
                    if ( uid <= 9 ){
                     System.out.println("-UserCount----------------->>>>>>>"+uid);
                           response.sendRedirect("uhome.jsp?msgg=secess");
                   } else {
                            String yes="Yes";
                            System.out.println("Yesssss"+yes);
                             Connection con2 = DbConnection.getConnection();
                           Statement st2 =con2.createStatement();
                  String  Semail=(String)session.getAttribute("email");
                           System.out.println("Email id"+Semail);
                        int i = st2.executeUpdate("update reg set allows = '" + yes + "' where mail = '" + Semail + "'");
                     if (i != 0) 
                        response.sendRedirect("index.jsp?msgg=failed");
                    }
                         
                    } else {
//                        response.sendRedirect("index.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                               
               %>