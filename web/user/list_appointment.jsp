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

<html>
    <body>
    <div class="table-agile-info">
    <div class="panel panel-default">
    <div class="panel-heading">
     Appointment for rentagreement
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
String query4 = "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='pending' and appstatus='0' ";
 //out.print(query4);
  
rs3=statement.executeQuery(query4);
if(rs3.next())
{
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
String query = "select * from tbl_rent  WHERE  client_id='"+session.getAttribute( "theName3" )+"' ";
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
    <td><a href="appointment.jsp?nm=<%=rs1.getString("username").toString() %>">apply</a></td> 
          
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
       
       
   



<div class="panel panel-default">
    <div class="panel-heading">
     Appointment for Namechange Affidavit
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
String que = "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='pending' and appstatus='0' ";
 //out.print(query4);
  
rs3=statement.executeQuery(que);
if(rs3.next())
{
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
String query = "select * from tbl_nameaffidavite  WHERE  client_id='"+session.getAttribute( "theName3" )+"' ";
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
    <td><a href="appointment.jsp?nm=<%=rs1.getString("username").toString() %>">apply</a></td> 
          
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
    
      

<div class="panel panel-default">
    <div class="panel-heading">
     Appointment for Vehicle Sales
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
        String qry = "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='pending' and appstatus='0' ";
 //out.print(query4);
  
rs3=statement.executeQuery(qry);
if(rs3.next())
{
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
String query = "select * from tbl_vehicle  WHERE  client_id='"+session.getAttribute( "theName3" )+"' ";
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
    <td><a href="appointment.jsp?nm=<%=rs1.getString("username").toString() %>">apply</a></td> 
          
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



<br> <br>

<center><h1>Approved/Rejected List Of Your Appointment</h1> </center>
         <table style="width:100%" border="1">
  <tr>
  
    <th>advocate_Id</th>
  
     <th>Date</th>
    <th>Time</th>
    <th>Status</th>
 
  </tr>
  
  <%
String query2 =  "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='approve' or status='reject' or status='pending' ";
rs=statement.executeQuery(query2);
while(rs.next())
{
    %>
      <tr >
    
    <td><%=rs.getString("advocate_id").toString() %></td>
      <td><%=rs.getString("date").toString() %></td> 
      <td><%=rs.getTime("time").toString() %></td> 
      <td><%=rs.getString("status").toString() %></td> 
         
      
                
    </tr>
     <%
    
}
%>
   
   
         </table> 
    


    </body>
 
       </html>    
       
       <%
    String fa1=request.getParameter("appointment");
    String abc1="success";
    if(fa1==null)
    {
        
    }
    else if((fa1.equals(abc1)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('your appointment send to advocate');");
   //out.println("location='appointment.jsp';");
   out.println("</script>");
 
    }
        
%>                  
 
       

 <%@include file="bottom2.jsp" %>