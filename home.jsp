         

<%
    String name = (String) session.getAttribute("seEmail");
    String pass = (String) session.getAttribute("Password");
    System.out.println("Admin lOgin : "+name+pass);
    try {

        if (name.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin")) {

            response.sendRedirect("admin_home.jsp");
        } else {
            response.sendRedirect("index.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>