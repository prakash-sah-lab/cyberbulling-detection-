<%-- 
    Document   : chart
    Created on : Aug 11, 2016, 3:52:02 PM
    Author     : java4
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from reg");
        while (rs.next()) {
            String idd = rs.getString("id");
            String ssss = rs.getString("spam");
            ArrayList<String> obj = new ArrayList<String>();
             ArrayList<String> obj1 = new ArrayList<String>();
            obj.add(idd);

            obj1.add(ssss);

            System.out.println("Current array list is:" + obj);
//            System.out.println("idddd :" + idd +"counts :"+ ssss);


%>

<html>
    <head>
        <script type="text/javascript" src="css/mainen.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {'packages':['bar']});
            google.charts.setOnLoadCallback(drawChart);
           
            function drawChart() {
                var name = "<%=obj%>";
               
               var y = "<%=obj1%>";
                text = name.concat("");
                //window.alert(name);
                while (name) {
                    

                    var data = google.visualization.arrayToDataTable([
                        ['Users', 'Total Click'],
                        ["<%=obj%>", "<%=obj1%>"]
                    
                    ]);}
               // window.alert(name);
                var options = {
                    chart: {
                        title: 'Company Performance',
                        subtitle: 'Sales, Expenses, and Profit: 2014-2017'
                    }
                };

                var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

                chart.draw(data, options);
            }
        </script>
    </head>
    <body>
        <div id="columnchart_material" style="width: 900px; height: 500px;"></div>
    </body>
    <%
//     System.out.println("name"+name);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }


    %>
</html>