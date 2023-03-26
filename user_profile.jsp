<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="network.DbConnection"%>
<%
   String name = null,smail=null,id=null,mail=null,sname=null,dob=null,sch=null,col=null,emp=null;

try{

   Connection con;
   con =  DbConnection.getConnection();  
   Statement st = con.createStatement();

   smail=(String)session.getAttribute("email");
  
   String s = "select id,name,sname,mail,dob,sch,col,emp from reg where mail='"+smail+"'";
   
   ResultSet rs = st.executeQuery(s);
  
   if(rs.next())
   {
   id=rs.getString(1);
   name=rs.getString(2);
   sname=rs.getString(3);
   smail=rs.getString(4);
   dob=rs.getString(5);
   sch=rs.getString(6);
   col=rs.getString(7);
   emp=rs.getString(8);
  session.setAttribute("id",id);
   

  
   }
   else
   out.print("Please check your login credentials");
  
   
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Online Social Network </title>
<link rel="stylesheet" href="cs\user.css" type="text/css" />
<link rel="stylesheet" href="cs\main_style.css" type="text/css" />
<link rel="stylesheet" href="cs\style.css" type="text/css" />
</head>
<body class="login">
<!-- header starts here -->
<div id="facebook-Bar">
  <div id="facebook-Frame">
    <div id="logo"> <a href="http://w3lessons.info">Cyberbullying Detection based on
Semantic-Enhanced Marginalized Denoising
Auto-Encoder</a> </div>       
<br></br><br><div >
         <form action="searchaction1.jsp" method="get" id="login_form" name="login_form">
          <table border="0" style="border:none">
            <tr>
              <td><img src="img\fb_icon.png" style="width:24px;height:24px;"></img></td>
              <td ><input type="text" tabindex="1"  id="email" placeholder="Search Your Friends" name="search" class="inputtext radius1" value=""></td>
              <td ><input type="submit" class="fbbutton" name="Search" value="Search" /></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="viewimage.jsp?id=<%=id%>" style="width:30px;height:24px;"></img></td>

              <td><a href="#" style="font: 2px; color: #ffffff"><%=name%></a></td>
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
<!--- start--->
<div id="nav">

        <br></br><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="viewimage.jsp?id=<%=id%>" style="width:250px;height:250px;"></img><br></br>
        <center><h2> 
       <font color="blue"><font size="5"> <%=name%>&nbsp;<%=sname%></font></font>
            </h2></center>
</div>
   
            <div>
<br></br><br></br><div  class="form" >
          <h2>It'z Me!&nbsp; 
       <font color="blue"><font size="5"> <%=name%></font></font>
        </h2>
        <form id="contactform" action="profile_update.jsp" method="get"> 
    			<p class="contact"><label for="name">Name</label></p> 
                        <input id="name" name="name" value="<%=name%>" tabindex="1" type="text"> 
    			<p class="contact"><label for="sname">Surname</label></p> 
                        <input id="name" name="sname" value="<%=sname%>" type="text"> 
                        <p class="contact"><label for="dob">Date of Birth</label></p> 
                        <input type="text" id="name" name="dob" value="<%=dob%>" > 
                        <p class="contact"><label for="sch">School</label></p> 
                       	<input id="name" name="sch" value="<%=sch%>" tabindex="1" type="text">  
                        <p class="contact"><label for="col">College</label></p> 
                        <input id="name" name="col" value="<%=col%>" tabindex="1" type="text"> 
                        <p class="contact"><label for="emp">Employee</label></p> 
                        <input id="name" name="emp" value="<%=emp%>" tabindex="1" type="text"> 
                     <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Update Profile!" type="submit"> 	 
   </form> 
</div>
</div>
  
      
<div id="section">
 <!--  Table Start  -->
                    
     
 
  <!--  Table end  -->
</div>

<!--- end--->

<br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br>
<div id="tooplate_footer_wrapper">

     <div id="tooplate_footer">
    
        Copyright © 2016 <a>Maverick</a>
                          <%
 
}
catch(Exception e)
{
System.out.println(e);
}
%>
    </div> 
</div>   
<!-- body  ends here -->
</body>

</html>
