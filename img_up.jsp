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
<!-- header starts here -->
<div id="facebook-Bar">
  <div id="facebook-Frame">
    <div id="logo"> <a href="http://w3lessons.info">Cyberbullying Detection based on Semantic-Enhanced Marginalized Denoising Auto-Encoder</a> </div>
    
         
      <br></br><br><div id="header-main-right">
          <div id="header-main-right-nav">
        <form method="post" action="" id="login_form" name="login_form">
          <table border="0" style="border:none">
            <tr>
              <td ><input type="text" tabindex="1"  id="email" placeholder="Email or Phone" name="email" class="inputtext radius1" value=""></td>
              <td ><input type="password" tabindex="2" id="pass" placeholder="Password" name="pass" class="inputtext radius1" ></td>
              <td ><input type="submit" class="fbbutton" name="login" value="Login" /></td>
            </tr>
            <tr>
            <td><label><input id="persist_box" type="checkbox" name="persistent" value="1" checked="1"/><span style="color:#ccc;">Keep me logged in</span></label>
            </td>
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
<br></br><br></br><div class="loginbox radius">
<h2 style="color:#141823; text-align:center;">Welcome to Online Social NetWork</h2>
	<div class="loginboxinner radius">
    	<div class="loginheader">
    		<h4 class="title">Upload Profile Picture</h4>
    	</div><!--loginheader-->
        
        <div class="loginform">
                	
        	<form  method="post" action="uploadServlet" enctype="multipart/form-data">
                            <label style="font-size: 20px"></label><input type="file"  name="photo" style="margin-left: 35px;" required/><br /><br /></font>
                            <input type="submit" value="Submit" style="width: 100px;height: 32px;background: #42A9C1;border: none;color: black;border-color: black;margin-left: 90px"/>&nbsp;&nbsp;
                            <input type="reset"   value="Reset" style="width: 100px;height: 32px;background: #42A9C1;border: none;color: black;border-color: black"/>
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
