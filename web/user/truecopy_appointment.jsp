<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>


<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
ResultSet rs3 = null;
%>

<% 
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>  


    <div class="table-agile-info">
<div class="panel panel-default">
    <div class="panel-heading">
     Appointment for Truecopy
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


 <tr>
  
    <th>advocate_name</th>
     <th>Starting Time</th>
     <th>ending Time</th>
    <th>apply</th>
    
     </tr>
      </thead>
     <tbody>
     
     <%
String qry1 = "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='pending' and appstatus='0' ";
 //out.print(query4);
  
rs3=statement.executeQuery(qry1);




if(rs3.next())
{
    
String query4= "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='approve' and appstatus='1' ";
 //out.print(query3);
  
rs2=statement.executeQuery(query4);
if(rs2.next())
         {
         }
         else
         {
String query5 = "select * from tbl_truecopy  WHERE  client_id='"+session.getAttribute( "theName3" )+"' ";
 //out.print(query);
  
rs=statement.executeQuery(query5);
if(rs.next())
    
{
String query6 = "select * from tbl_register  WHERE  id='"+rs.getString("advocate_id")+"' ";
rs1=statement.executeQuery(query6);
while(rs1.next())
{
    %>
    
      <tr >
    
    <td><%=rs1.getString("username").toString() %></td>
    <td><%=rs1.getTime("s_time").toString() %></td>
     <td><%=rs1.getTime("e_time").toString() %></td>
    <td><a href="appointment.jsp?nm=<%=rs1.getString("username").toString() %>">apply</a></td> 
          
    </tr>
    <%
 }
}
}
}
else
{
String query3 = "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='approve' and appstatus='1' ";
 //out.print(query3);
  
rs2=statement.executeQuery(query3);
if(rs2.next())
         {
         }
         else
         {
String query = "select * from tbl_truecopy  WHERE  client_id='"+session.getAttribute( "theName3" )+"' ";
 //out.print(query);
  
rs=statement.executeQuery(query);
if(rs.next())
    
{
String query1 = "select * from tbl_register  WHERE  id='"+rs.getString("advocate_id")+"' ";
rs1=statement.executeQuery(query1);
while(rs1.next())
{
    %>
    
      <tr >
    
    <td><%=rs1.getString("username").toString() %></td>
    <td><%=rs1.getTime("s_time").toString() %></td>
     <td><%=rs1.getTime("e_time").toString() %></td>
    <td><a href="appointment.jsp?nm=<%=rs1.getString("username").toString() %>&&ad=<%=rs1.getString("id")%>">apply</a></td> 
          
    </tr>
    <%
 }   
}
}
}
%>

  
 </tbody>
</table> 
    </div>


 <%@include file="bottom2.jsp" %>