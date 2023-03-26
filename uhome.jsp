<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="network.DbConnection"%>
<%
    String name = null, smail = null, id = null, pname = null;

    try {

        Connection con;
        con = DbConnection.getConnection();
        Statement st = con.createStatement();

        smail = (String) session.getAttribute("email");

        String s = "select id,name,mail from reg where mail='" + smail + "'";

        ResultSet rs = st.executeQuery(s);

        if (rs.next()) {
            id = rs.getString(1);
            name = rs.getString(2);

            smail = rs.getString(3);

            session.setAttribute("id", id);

        } else {
            out.print("Please check your login credentials");
        }


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Online Social Network </title>
        <link rel="stylesheet" href="cs\user.css" type="text/css" />
        <link rel="stylesheet" href="cs\main_style.css" type="text/css" />
    </head>
    <body class="login">
        <!-- header starts here -->
        <div id="facebook-Bar">
            <div id="facebook-Frame">
                <div id="logo"> <a href="#">Cyberbullying Detection based on Semantic-Enhanced Marginalized Denoising Auto-Encoder</a> </div>       
                <br></br><br><div >
                        <form action="searchaction1.jsp" method="get" action="" id="login_form" name="login_form">
                            <table border="0" style="border:none">
                                <tr>
                                    <td><img src="img\fb_icon.png" style="width:24px;height:24px;"></img></td>
                                    <td ><input type="text" tabindex="1"  id="email" placeholder="Search Your Friends" name="search" class="inputtext radius1" value=""></td>
                                    <td ><input type="submit" class="fbbutton" name="Search" value="Search" /></td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="viewimage.jsp?id=<%=id%>" style="width:30px;height:24px;"></img></td>
                                    <%

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }
                                    %>
                                    <td><a href="user_profile.jsp" style="font: 2px; color: #ffffff"><%=name%></a></td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="uhome.jsp" style="font: 2px; color: #ffffff">Home</a></td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="my_friends.jsp" ><img src="img\user_png.png" width="30" height="24" /></a></td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="chat.jsp" ><img src="img\chat1_1.png" width="30" height="24" /></a></td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp" ><img src="img\logout1.png" width="80" height="28" /></a></td>
                                </tr>
                            </table>
                        </form>
                    </div> 
            </div>
        </div>

        <!-- header ends here -->
        <!-- body start here -->

        <div id="tooplate_content">

            <div id="services">
                <div class="col_w300">
                    <!--<h3 class="service2">Time Line Post</h3>-->
                    <ul>
                        <br><br>
                                <li><a href="search_frids.jsp"><font color="blue" size="4" style="font-family: cursive">Find Friends</font></a></li><br>
                                    <li><a href="user_profile.jsp"><font color="blue" size="4" style="font-family: cursive">Edit Profile</font></a></li><br>
                                        <li><a href="time_line_up.jsp"><font color="blue" size="4" style="font-family: cursive">Share Photo on TimeLine</font></a></li><br>
                                            <li><a href="viewrequest.jsp"><font color="blue" size="4" style="font-family: cursive">View Request</font></a></li><br>
                                                <li><a href="chat_receive.jsp"><font color="blue" size="4" style="font-family: cursive">Message</font></a></li><br>    
                                                    </ul>
                                                    <div class="btn_more"><a href="#"></a></div>
                                                    </div>
                                                    <div class="col_w300">
                                                        <h3 class="service2">Time Line Post</h3>
                                                        <legend><font color="#FF8000"><strong><font size="4">Posted Image </font></strong></font></legend><br>
                                                            <table align="center" height="174">


                                                                <%
                                                                    //while(rs2.next()){
                                                                    //fid=rs2.getInt("fid");
                                                                    //fname=rs2.getString("fname");
                                                                    //System.out.println("friend id"+fid);
                                                                    Connection con1 = null;
                                                                    Statement st1 = null;
                                                                    ResultSet rs1 = null;
                                                                    String statusb = "Allow";
                                                                    String setting = "public";
                                                                    try {
                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/osn", "root", "root");
                                                                        st1 = con1.createStatement();
                                                                        //String sql3="select * from view where (uid='"+fid+"' and statusb='"+statusb+"') or (uid='"+fid+"' and setting='"+setting+"') or (user='"+fname+"' and statusa='"+statusb+"') or (setting='"+setting+"')";
                                                                        String sql3 = "SELECT * FROM timeline ORDER BY `timeline`.`id` DESC";

                                                                        rs1 = st1.executeQuery(sql3);
                                                                        while (rs1.next()) {
                                                                            //rs.getString
                                                                %>

                                                                <%

                                                                    System.out.println("image id" + rs1.getInt("id"));
                                                                %>
                                                                <tr><td>
                                                                        <img src="view1.jsp?id=<%=rs1.getInt("id")%>" alt="" width="160" height="120" /><br>
                                                                            <textarea name="" readonly="" rows="3" cols="18"><%=rs1.getString("msg")%></textarea>
                                                                    </td>
                                                                    <td><font color="#4B565F"><strong>Posted By</strong></font>:&nbsp;&nbsp; 
                                                                        <font style="font-size: 15px; color: blueviolet"><%=rs1.getString("name")%></font>
                                                                    </td>
                                                                </tr>
                                                                <%}
                                                                    } catch (Exception e3) {
                                                                        System.out.println(e3);
                                                                    }
                                                                    //}
                                                                %>

                                                            </table>
                                                            <div class="btn_more"><a href="#"></a></div>
                                                    </div>

                                                    <div class="col_w300 last_col">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<h3 class="service3">My Friends</h3>




                                                        <legend><font color="#FF8000" size="4"><strong>Send Request</strong></font></legend>

                                                        <%

                                                            int fid = 0;

                                                            Connection con2 = null;
                                                            Statement st2 = null;
                                                            ResultSet rs2 = null;
                                                            String status = "Conform";
                                                            String sql = "select * from reg where mail!='" + smail + "'";
                                                            try {
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/osn", "root", "root");
                                                                st2 = con2.createStatement();
                                                                rs2 = st2.executeQuery(sql);
                                                                while (rs2.next()) {
                                                                    fid = rs2.getInt("id");
                                                                    String fname = rs2.getString("name");
                                                                    String rid = id + "," + name + "," + Integer.toString(fid) + "," + fname;
                                                                    Connection con3 = null;
                                                                    Statement st3 = null;
                                                                    ResultSet rs3 = null;

                                                                    String sql3 = "select * from request where id='" + id + "' and fid='" + fid + "'";
                                                                    try//try2
                                                                    {
                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/osn", "root", "root");;
                                                                        st3 = con3.createStatement();
                                                                        rs3 = st3.executeQuery(sql3);

                                                                        if (rs3.next()) {%>


                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><font style="font-size: 15px; color: black"><%=fname%></font></p>
                                                        <p><img src="viewimage.jsp?id=<%=fid%>" alt="" width="140" height="99" />
                                                            <font color="#0101DF" size="3"><strong><%=rs3.getString("status")%></strong></font></p>

                                                        <%} else {%>
                                                        <p><%=fname%></p>

                                                        <p><img src="viewimage.jsp?id=<%=fid%>" alt="" width="120" height="99" /> 
                                                            <a href="req1.jsp?id=<%=rid%>"><font color="#0101DF" size="3"><strong>Send Request</strong></font></a></p>

                                                        <%}

                                                                    } //end try2
                                                                    catch (Exception e3) {
                                                                        System.out.println(e3);
                                                                    }

                                                                }

                                                            } catch (Exception ex) {
                                                                System.out.println(ex);
                                                            } finally {
                                                                con2.close();
                                                                st2.close();
                                                            }

                                                        %>

                                                    </div>
                                                    <div class="btn_more"><a href="#"></a></div>
                                                    </div>

                                                    <div class="cleaner"></div>
                                                    </div>



                                                    <div class="cleaner"></div>            

                                                    <br></br><br></br><br></br><br></br><br></br>
                                                    <div id="tooplate_footer_wrapper">

                                                        <div id="tooplate_footer">

                                                            Copyright © 2016 <a>Maverick</a>

                                                        </div> 
                                                    </div>   
                                                    <!-- body  ends here -->
                                                    </body>

                                                    </html>
