<%@page import="com.oreilly.servlet.*,java.sql.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="network.DbConnection"%>
<html>
<head>
</head>
<body>
<%
Thread.sleep(100);
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\");
		String paramname=null;
	     
		String image=null;
//                String pid=null;
//		int pid=(Integer)(session.getAttribute("pid"));
		//int n=Integer.parseInt(n1);
		//String fname=(String)session.getAttribute("fname1");
  		//String sname=(String)session.getAttribute("sname1");
		String name=(String)session.getAttribute("sesname");
  		String uid=(String)session.getAttribute("sesid");
   		  File file1 = null;
		System.out.println("session BBB"+name+uid);	
		
		try {
			 
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				
				if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
				}
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\"+image);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
            
			Connection con=DbConnection.getConnection(); 

			PreparedStatement ps=con.prepareStatement("insert into view(image,uiid,name) values(?,?,?)");
			    
//       			        ps.setInt(1,pid);
				ps.setString(1,image);
				ps.setString(2,uid);
				ps.setString(3,name);
				
				
				
				
				
                     if(f == 0)
			ps.setObject(2,null);
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(2,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
//				session.setAttribute("pid",sesname);
				response.sendRedirect("userpage1.jsp?message=success");
			}
			else
			{
				response.sendRedirect("userpage1.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>