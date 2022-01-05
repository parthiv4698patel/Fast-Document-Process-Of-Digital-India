<%-- 
    Document   : login_process
    Created on : Aug 28, 2018, 10:10:41 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<% 
  String Email=request.getParameter("email");
  //set session
  session.setAttribute( "theName", Email );
  session.setMaxInactiveInterval(36000); 
  
  String Id=request.getParameter("id");
  
  
  String Password=request.getParameter("password");
  
  String type=request.getParameter("type1");
  
  String username=request.getParameter("first_name");
 
  

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "SELECT * FROM tbl_register WHERE email='"+Email+"' and password='"+Password+"'  ";
//out.print(query);
//out.print(type);
//rs.getString("type").toString();
String tyyp=null;
String id1=null;
rs=statement.executeQuery(query);
while(rs.next())
    {
        tyyp=rs.getString("type").toString();
        username=rs.getString("username").toString();
        id1=rs.getString("id").toString();
    }



if(null == tyyp && null == id1){
     response.sendRedirect("/final_project/homepage/index4.jsp?status=fail");
   
    //System.out.println("check email and type");
}

else{
    //set username session
session.setAttribute( "theName1", username );
 session.setMaxInactiveInterval(36000); 
session.setAttribute( "theName3", id1 );
 session.setMaxInactiveInterval(36000); 
out.print(tyyp);
out.print(username);
out.print(id1);
       


 if(tyyp.equals("admin"))
    {
	response.sendRedirect("/final_project/admin/index.jsp");

    }

else if(tyyp.equals("advocate"))
    {
  response.sendRedirect("/final_project/notary/appointment_request.jsp");  
    }


else if(tyyp.equals("client"))
    {
  response.sendRedirect("/final_project/user/index2.jsp");  
    }
    
else
{
    System.out.println("check email and type");
}
  
statement.close();
connection.close();
}


%>

