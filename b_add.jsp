<%-- 
    Document   : b_add
    Created on : Oct 31, 2016, 2:32:19 PM
    Author     : java4
--%>

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
            <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Word added successfully');</script>
        <%
            }
        %>
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
                                        <br></br><br></br><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp" ><img src="img\l22.jpg" width="120" height="60" /></a></td>

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
            <br></br><a href="admin_home.jsp">MALICIOUS USER</a><br>
                <a href="b_user.jsp">BLOCKED USER DETAILS</a><br>
                    <a href="b_add.jsp">ADD CYBERBULLYING WORDS</a><br>
                    <br></br><h4 class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Administrative</h4><img src="img\a22.jpg" alt="Mountain View" style="width:304px;height:228px;"></img>
                    </div>
                    <div class="loginbox radius">
                        <h2 style="color:#141823; text-align: left;"></h2>
                        <div class="container">
                            <div class="row">
                                <!--<div class="box" style="height: 200px;">-->
                                <!--To do you work-->
                                <div style="border: 1px solid white;height: 350px;border-top-width: 0px;border-bottom-width: 0px; width: 700px">
                                    <center><h3>Add Cyberbullying words</h3></center><br />
                      
                                    <form action="loginaction.jsp" method="get">
                                        <label>Categories :
                                        <select name="cat" style="background-color: #8a8e9a;color:white;padding:5px;font-size:18px;border:none;padding:8px; width: 220px">
                                            <option>Bad Words</option>
                                            <option>Illegal Words</option>
                                        </select></label><br>
                                        <label>Words 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;<input type="text" name="word" style="background-color: #8a8e9a;color:white;padding:5px;font-size:18px;border:none;padding:6px; width: 220px"/><br></label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="hidden" name="status" value="2" />
                                    <input type="submit" value="Submit" style="background-color: #333;color:white;padding:5px;font-size:14px;border:none;padding:8px; width: 100px"></input>
                                    </form>
                            
                                    
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
    <p style="font-size:12px;">
    </p>
</body>
</html>

