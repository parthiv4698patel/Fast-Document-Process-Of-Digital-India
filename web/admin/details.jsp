<%-- 
    Document   : details
    Created on : Dec 21, 2018, 4:58:17 PM
    Author     : User
--%>

<%@include file="top.jsp" %>

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

String Id=request.getParameter("id");
session.setAttribute( "theId", Id );

String query = "SELECT * FROM tbl_register WHERE id='"+Id+"'  ";
//out.print(query);

String pincd=null;
String e_mail=null;
String u_name=null;
String phno=null;
String addrs=null;
String i_d=null;
rs=statement.executeQuery(query);
while(rs.next())
    {
        pincd=rs.getString("pincode").toString();
       e_mail=rs.getString("email").toString();
       u_name=rs.getString("username").toString();
       phno=rs.getString("phone_number").toString();
       addrs=rs.getString("address").toString();
       i_d=rs.getString("id").toString();
    }


 %>
 
<html>
<body>

    <div class="table-agile-info">
   <div class="panel panel-default">
    <div class="panel-heading">
        Advocate Information
    </div>
    <div>
 
     <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        <thead>
  
    <tr><th>Name</th><td><% out.print(u_name); %></td></tr>
        <tr><th>Address</th><td><% out.print(addrs); %></td></tr>
        <tr><th>Email</th><td><% out.print(e_mail); %></td></tr>
        <tr><th>Mobile Number</th><td><% out.print(phno); %></td></tr>
        <tr><th>Pincode</th><td><% out.print(pincd); %></td></tr>
   
  
  </table>
        

<% 
 
  

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

//String user_id1=request.getParameter("user_id");

    //String user_id=request.getParameter("user_id");

String query1 = "SELECT * FROM tbl_ndoc WHERE user_id='"+Id+"'   ";
//out.print(query1);
//out.print(Id);
String i_nm = null;

String type1 = null;
 
rs=statement.executeQuery(query1);
%>


    <div class="panel panel-default">
    <div class="panel-heading">
    Document Detail
    </div>
    <div>
      
     <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
         "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        <tbody>
  
    <%
        int cc=0;
        while(rs.next())
    {
        i_nm=rs.getString("image_name").toString();
        type1=rs.getString("type").toString();
        %>
        
        <tr><th><% out.print(type1);%></th><td>
                <img src="../image/<% out.print(i_nm);%>"  height="100" width="100"/>
        </td>
        </tr>

        <%
            cc++;
             }
//out.print(i_d);
if(cc==0)
{

out.print("No documents uploaded yet");
}
else
{
        %>
 
        <%
}
 %>
 <tr>
<% 
 
  

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query3 = "SELECT * FROM tbl_register WHERE email='"+session.getAttribute( "theName" ) +"'  and id='"+ session.getAttribute( "theId" )+"'";
//out.print(query);

String disapp=null;
rs=statement.executeQuery(query);
while(rs.next())
    {
       disapp=rs.getString("disapprove").toString();
       
    }


//out.print(disapp);

 %>

        
 <center>
     <form action="disapprove_process.jsp" method="post">
    <p style="color:white;"> Note:- write reason of rejection and click on to submit button </p>
    	
                
   <input type="text" name="disapprove" value="<% out.print(disapp); %>" maxlength="50">
    <input type="submit" value="Reject">
  </form>
 </center>
    <center>
        <p style="color: black">If all documents is done then click on</p>
     <a href="../admin/approve_process.jsp" style="color:blue;">Approved</a>
        
</center>
 </tr>
</tbody>
     </table>
    </div>
</body>
</html>



<%@include file="bottom.jsp" %>