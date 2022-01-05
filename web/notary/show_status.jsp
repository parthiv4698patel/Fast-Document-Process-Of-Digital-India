<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top1.jsp" %>



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
String query1 = "SELECT approve FROM tbl_register WHERE id='"+session.getAttribute( "theName3" ) +"' and type='advocate' ";
//out.print(query1);
String app=null;
rs=statement.executeQuery(query1);
while(rs.next())
    {
       
       app=rs.getString("approve").toString();
       int value=Integer.valueOf(app);
  //out.print(app);
  //out.print(value);
  
  
 if(value==0)
  {
String query = "SELECT disapprove FROM tbl_register WHERE id='"+session.getAttribute( "theName3" ) +"'  ";
//out.print(query);
String disapp=null;
rs=statement.executeQuery(query);
while(rs.next())
    {
       disapp=rs.getString("disapprove").toString();
  %>  
  <br><br><br><br><br>
  <center>
 <p><font color="red" size="05px">Your Status: <%out.print(disapp);%></font></p>
     </center>
 <%

  
 
    }
  }
  //out.print(disapp);

 
 
else 
  {
String query2 = "select * from tbl_register  WHERE id='"+ session.getAttribute( "theName3" )+"' and type='advocate' and approve='1' ";
rs=statement.executeQuery(query2);
while(rs.next())
{
%>  <br><br><br><br><br>
    <center> 
    <p><font color="green" size="05px">Your Status: <% out.println("you are approved by admin");%></font></p>
     </center>
 <%

 
}
  }
 
    }
%>
   
   
         


 
 <%@include file="bottom1.jsp" %>