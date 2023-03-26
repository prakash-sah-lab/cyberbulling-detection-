<%@ page import ="java.sql.*" %>
 
<% 

  String url = "jdbc:mysql://localhost:3306/osn";
        String user = "root";
        String password = "root";
       int id=Integer.parseInt(request.getQueryString());
            Connection conn = DriverManager.getConnection(url, user, password);
            Statement stmt = conn.createStatement();
            String sql = "delete from chat where id='" + id + "'";
            stmt.executeUpdate(sql);
            System.out.println("Spam User Remove sucessfully");
            response.sendRedirect("chat_receive.jsp");        
%>