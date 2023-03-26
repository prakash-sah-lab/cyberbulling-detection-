<%@page import="network.ThreadDemo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%

    String id = (String) session.getAttribute("id");
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
      
    }


    String name = request.getParameter("name");
    String sname = request.getParameter("sname");
    String dob = request.getParameter("dob");
    String school = request.getParameter("sch");
    String college = request.getParameter("col");
    String emp = request.getParameter("emp");
    System.out.println("get profile information" + school + college + emp + name + sname + dob);
    String j = request.getQueryString();
    Connection conn = DbConnection.getConnection();
    Statement stt = conn.createStatement();
    String Semail = (String) session.getAttribute("email");
    System.out.println("Email id" + Semail);
    int in = stt.executeUpdate("update reg set name = '" + name + "', sname = '" + sname + "',dob = '" + dob + "',sch = '" + school + "',col = '" + college + "',emp = '" + emp + "' where mail = '" + Semail + "'");
    if (in != 0) {
        response.sendRedirect("user_profile.jsp?msg = secess");
    } else {
        response.sendRedirect("user_profile.jsp?msg=Error");
    }
%>