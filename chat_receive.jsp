<%-- 
    Document   : index
    Created on : Apr 19, 2016, 3:20:17 PM
    Author     : kavi
--%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Online Social Network </title>
<link rel="stylesheet" href="css\admin.css" type="text/css" />
<!--<link rel="stylesheet" href="css\gen.css" type="text/css" />-->
<link href="css/tabel.css" rel="stylesheet"/>
</head>

<body class="login">
<!-- header starts here -->
<div id="facebook-Bar">
  <div id="facebook-Frame">
    <div id="logo"> <a href="#">Cyberbullying Detection based on Semantic-Enhanced Marginalized Denoising Auto-Encoder</a> </div>
    
         
      <br></br><br><div id="header-main-right">
          <div id="header-main-right-nav">
        <form method="post" action="#" id="login_form" name="login_form">
          <table border="0" style="border:none">
            <tr>
<!--              <td ><input type="text" id="email" placeholder="Your Email Id" name="mail" class="inputtext radius1" value=""></td>
              <td ><input type="password" id="pass" placeholder="Password" name="pass" class="inputtext radius1" ></td>
               <input type="hidden" value="1" name="status" />-->
              <!--<td ><input type="submit"  class="fbbutton" name="login" value="Login" /></td>-->
              <!--<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin.jsp" ></td>-->
              <br></br><br></br><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="uhome.jsp" ><img src="img\back.png" width="90" height="30" /></a></td>
            <!--</tr>-->
<!--            <tr>
            <td><label><input id="persist_box" type="checkbox" name="persistent" value="1" checked="1"/><a href="" style="color:#ccc; text-decoration:none">forgot your password?</a></label>
            </td>
            <td><label><a href="" style="color:#ccc; text-decoration:none">forgot your password?</a></label></td>
            </tr>-->
          </table>
        </form>
      </div>
          </div>
      </div>
</div>
<!-- header ends here -->
<div id="nav">
<!--    <br></br><h4>&nbsp;&nbsp;&nbsp;&nbsp;Facebook helps you &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;connect and share &nbsp;&nbsp;&nbsp;&nbsp;with the people in your life.</h4>-->

<br></br><h4 class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Messages
</h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img\user_re.png" alt="Mountain View" style="width:304px;height:228px;"></img>
</div>
<div class="loginbox radius">
<h2 style="color:#141823; text-align: left;"></h2>

<div class="container">
            <div class="row">
                <!--<div class="box" style="height: 200px;">-->
                    <!--To do you work-->
                    <div style="border: 1px solid white;height: 350px;border-top-width: 0px;border-bottom-width: 0px; width: 700px">
                        <center><h3>Message</h3></center><br />
                        <table border="1" style="text-align: center;margin-left: 180px">
                            <tr>
                                <th style="text-align: center;width: 100px;">Sender</th>
                                <th style="text-align: center;width: 150px;">Receiver</th>
                                <th style="text-align: center;width: 150px;">Date</th>
                                <th style="text-align: center;width: 600px;">Message</th>
                                <th style="text-align: center;width: 100px;">Photo</th>
<!--                                <th style="text-align: center;width: 400px;">Date of Birth</th>-->
<!--                                <th style="text-align: center">Activation</th>-->
                                 <th style="text-align: center">Remove</th>
                            </tr>
                            <tr>
                                <%
                                String name=(String)session.getAttribute("sesname");
                                System.out.println("Name check for Received"+name);
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = DbConnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from chat where reci_name ='"+ name + "'");
                                        while(rs.next())
                                        {
                                            String id= rs.getString("id");
                                           
            %>
                                <td><%=rs.getString("send_name")%></td>     
                                <td><%=rs.getString("reci_name")%></td>     
                                <td><%=rs.getString("date")%></td>     
                                <td><%=rs.getString("msg")%></td>     

<!--                                <td></td>     -->
                                <td> <img src="view_re.jsp?id=<%=id%>" style="width:60px;height:45px;"></img></td>   
                                <td> <a href="chat_remove.jsp?<%=rs.getString("id")%>"><font style="color: red">Delete</a></font> </td> 
                                <tr />
                                    <%} 
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                                    %>
                        </table>
                    </div>
                </div>
            </div>
        </div>





</div><!--loginbox-->










<p style="font-size:12px;">
<!--  <center>
    <a href="http://www.jpinfotech.org">Jpinfotech</a>
  </center>-->
</p>

</body>

</html>
