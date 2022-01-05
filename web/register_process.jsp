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
  String type=request.getParameter("type1");
  String username=request.getParameter("first_name");
  String password=request.getParameter("password");
  //String conform_password=request.getParameter("password_confirmation");
  String email=request.getParameter("email");
  String phone_number=request.getParameter("mobile");
  String pincode=request.getParameter("pin");
  String address=request.getParameter("Address");
   String disapprove=request.getParameter("Disapprove");
    String s_time=request.getParameter("aStartTime");
     String e_time=request.getParameter("aEndTime");
  int approve=0;
  
  //out.print(email);

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query1 = "SELECT email FROM tbl_register WHERE email=? ";
PreparedStatement ps0=connection.prepareStatement(query1);
ps0.setString(1,email);
rs=ps0.executeQuery();

if(request.getParameter("email").equals(email))
{
    if(rs.next())
    {
     response.sendRedirect("/final_project/register.jsp?status=fail");
   
    }
    else{
    String query = "insert into tbl_register(type,username,password,email,phone_number,pincode,address,approve,disapprove,s_time,e_time) values('"+type+"','"+username+"','"+password+"','"+email+"','"+phone_number+"','"+pincode+"','"+address+"','"+approve+"','"+disapprove+"','"+s_time+"','"+e_time+"')";
    statement.executeUpdate(query);
    if(type.equals("advocate"))
        {
    response.sendRedirect("index.jsp?status=1");
        }
    else
        {
    response.sendRedirect("index.jsp?status=1");
        }
    statement.close();
    connection.close();
    pageContext.getOut().println("Record inserted");

    }
}

%>

