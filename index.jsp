<%-- 
    Document   : index
    Created on : Apr 19, 2016, 3:20:17 PM
    Author     : kavi
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Online Social Network </title>
        <link rel="stylesheet" href="css\style.css" type="text/css" />
        <link rel="stylesheet" href="css\gen.css" type="text/css" />
    </head>
    <body class="login">
        <%
            if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Please Enter Correct username and Password');</script>
        <%            }
        %>
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Registration Successfully Created');</script>
        <%            }
        %>
       <style> 

            .inputs {
                background: #ccc;
                font-size: 24px;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                height: 25px;
                width: 200px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputs:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #2b542c, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .inputss {
                background: #ccc;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 440px;
                height: 50px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputss:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #2b542c, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 10px 27px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
            }
        </style> 
        <!-- header starts here -->
        <div id="facebook-Bar"> 
            <div id="facebook-Frame">
               <div><font style="position: fixed; top: 20px; font-size:23px; font-weight:bold; color:#FFF; text-decoration:none; ">Cyberbullying Detection based on Semantic-Enhanced Marginalized Denoising Auto-Encoder </font></div>
                 <br></br><br><div id="header-main-right">
                        <div id="header-main-right-nav">
                            <form method="post" action="loginaction.jsp" id="login_form" name="login_form">
                                <table border="0" style="border:none">
                                    <tr>
                                        <td ><input type="text" id="email" placeholder="Your Email Id" name="mail" class="inputtext radius1" value=""></td>
                                        <td ><input type="password" id="pass" placeholder="Password" name="pass" class="inputtext radius1" ></td>
                                        <input type="hidden" value="1" name="status" />
                                        <td ><input type="submit" class="fbbutton" name="login" value="Login" /></td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <!--            <td><label><input id="persist_box" type="checkbox" name="persistent" value="1" checked="1"/><a href="" style="color:#ccc; text-decoration:none">forgot your password?</a></label>
                                                    </td>-->
                                        <td><label><a href="" style="color:#ccc; text-decoration:none">forgot your password?</a></label></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <!-- header ends here -->
        <div id="nav">
            <!--    <br></br><h4>&nbsp;&nbsp;&nbsp;&nbsp;Facebook helps you &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;connect and share &nbsp;&nbsp;&nbsp;&nbsp;with the people in your life.</h4>-->

            <br></br><br></br><h4 class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Connecting Friends</h4><img src="img\osn.jpg" alt="Mountain View" style="width:304px;height:228px;"></img>
        </div>
        <div class="loginbox radius">
            <h2 style="color:#141823; text-align:center;">Online Social Network</h2>
            <div class="loginboxinner radius">
                <div class="loginheader">
                    <h4 class="title">Connect with friends and the world around you.</h4>
                </div><!--loginheader-->

                <div class="loginform">

                    <form id="login" action="loginaction.jsp" method="post">
                        <input type="text" class="inputs" name="name" required="" placeholder="First Name" /> 
                        <input type="text" class="inputs" name="uname" required="" placeholder="Last Name" />
                        <input type="email" class="inputs" name="mail" required="" placeholder="e-mail ID" />
                        <input type="email" class="inputs" name="email" required="" placeholder="e-mail ID" />
                        <input type="date" class="inputs" name="dob" required="" placeholder="Date Of Birth" />
                        <input type="password" class="inputs" name="pass" required="" placeholder="Enter Your Password" />
                        <select class="inputss" required="" name="gen" >
                            <option value="">Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                        <input type="hidden" value="3" name="status" />
                        <!--                     <p>
                                            <input type="file" id="password" name="password" placeholder="New Password" class="radius" />
                                        </p>-->
                        <p>
                            <button class="radius title" name="client_login">Create an Account</button>
                        </p>
                    </form>
                </div><!--loginform-->
            </div><!--loginboxinner-->
        </div><!--loginbox-->
             <p style="font-size:12px;">
            <center>
                <!--<a href="http://www.jpinfotech.org">Jpinfotech</a>-->
            </center>
        </p>
    </body>
</html>
