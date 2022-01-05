<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
    //String id=request.getParameter("id");
    String user_id=request.getParameter("user_id");
    String image_name=request.getParameter("image_name");
    String type=request.getParameter("type");
    
    
    
 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
String certificate=null;

String query = "insert into tbl_ndoc(user_id,image_name,type) values('"+session.getAttribute( "theName3" )+"','"+request.getParameter("image_name")+"','"+type+"')";
out.print(query);

/*
statement.executeUpdate(query);
statement.close();
connection.close();
pageContext.getOut().println("Record inserted");
/*
	}
	catch(Exception exp)
	{
		out.println("Error in connection");
	}*/
	//response.sendRedirect("../admin/index.jsp?status=1");

 
%>





