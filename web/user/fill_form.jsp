<%-- 
    Document   : profile_detail
    Created on : Dec 19, 2018, 9:32:43 AM
    Author     : User
--%>
 <%@include file="top2.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<% 
 
  

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "SELECT * FROM tbl_register WHERE email='"+session.getAttribute( "theName" ) +"'  ";
//out.print(query);
String pincd=null;
String e_mail=null;
String u_name=null;
String phno=null;
String addrs=null;
rs=statement.executeQuery(query);
while(rs.next())
    {
        pincd=rs.getString("pincode").toString();
       e_mail=rs.getString("email").toString();
       u_name=rs.getString("username").toString();
       phno=rs.getString("phone_number").toString();
       addrs=rs.getString("address").toString();
       
    }

/*
out.print(pincd);
out.print(e_mail);
out.print(u_name);
out.print(phno);
out.print(addrs);
*/
 %>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br><br><br>
        <center>
            <h1> PROFILE DETAIL </h1>
            <br>
        <form action="profile_process2.jsp" method="post">
            <table>
                <tr><td>Id</td>  <td><input type="text" name="id2" value="<%= session.getAttribute( "theName3" ) %>" disabled>	</td></tr>
                <tr><td>Name</td>  <td><input type="text" name="first_name" value="<% out.print(u_name); %>" maxlength="50">	</td></tr>
                <tr><td>Email </td>  <td><input type="text" name="e_mail" value="<% out.print(e_mail); %> " >  	</td></tr>
                <tr><td>Phone_no. </td>  <td><input type="text" name="ph_no" value="<% out.print(phno); %>" maxlength="50">	</td></tr>
                <tr><td>Address </td>  <td><input type="text" name="address" value="<% out.print(addrs); %>" maxlength="50">	</td></tr>
                <tr><td>Pincode </td>  <td><input type="text" name="pin_code" value="<% out.print(pincd); %>" maxlength="50">	</td></tr>
           
           </table>
                <br>
            <input type="submit" value="Update" >
            
			</form>
                 </center>
           <br><br><br><br><br>
    </body>
</html>

 
  <%@include file="bottom2.jsp" %>