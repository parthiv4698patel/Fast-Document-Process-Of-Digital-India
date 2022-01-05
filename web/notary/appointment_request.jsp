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
%>  

<html>
    <body>
  <div class="table-agile-info">
    <div class="panel panel-default">
    <div class="panel-heading">
        Pending List Of Appointment
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
  
    <th>Client_Id</th>
     <th>Date</th>
    <th>Time</th>
    <th>Status</th>
    <th>Confirm/Reject</th>
    
    
     </tr>
    
    
     <%
String query = "select * from tbl_clientappointment  WHERE  advocate_id='"+session.getAttribute( "theName3" )+"' and status='pending' ";
 //out.print(query);
rs=statement.executeQuery(query);
while(rs.next())
{
    %>
     </thead>
     <tbody>
         
      <tr >
    
       <td><%=rs.getString("client_id").toString() %></td> 
      <td><%=rs.getString("date").toString() %></td> 
      <td><%=rs.getTime("time").toString() %></td> 
      <td><%=rs.getString("status").toString() %></td> 
      <td><a href="../notary/app_req_process.jsp?client_id=<%=rs.getInt("Client_Id") %>">Confirm</a>
          /<a href="../notary/app_reject_pro.jsp?client_id=<%=rs.getInt("Client_Id") %>">Reject</a>
      
      
      </td>   
    </tr>
    <%
    
}
%>

 </tbody>
</table> 
    
      <div class="panel panel-default">
    <div class="panel-heading">
         Approved/Rejected List Of Appointment
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
  
    <th>Client_Id</th>
     <th>Date</th>
    <th>Time</th>
    <th>Status</th>
 
  </tr>
  
  <%
String query2 =  "select * from tbl_clientappointment  WHERE  advocate_id='"+session.getAttribute( "theName3" )+"' and status='approve' or status='reject'";
rs=statement.executeQuery(query2);

int count1=0;
while(rs.next())
{
    count1++;
    
    %>
 
  </thead>
     <tbody>
  
      <tr >
    
       <td><%=rs.getString("client_id").toString() %></td> 
      <td><%=rs.getString("date").toString() %></td> 
      <td><%=rs.getTime("time").toString() %></td> 
      <td><%=rs.getString("status").toString() %></td> 
         
      
                
    </tr>
     <%
    
}
%>
<% 
if(count1==0)
    {
 %>  
 <p><font color="red"><%out.println("Opps No User Request..");%></font></p>
 <%
   
   

     }
%>

 </tbody>
</table> 
 <div>

    </body>
 
       </html>
       
       
       
<%
    String fa1=request.getParameter("status");
    String abc1="success1";
    if(fa1==null)
    {
        
    }
    else if((fa1.equals(abc1)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('you are approved user's appointment);");
   //out.println("location='appointment.jsp';");
   out.println("</script>");
 
    }
        
%> 


<%
    String fa=request.getParameter("status");
    String abc="reject";
    if(fa==null)
    {
        
    }
    else if((fa.equals(abc)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('appointment rejected');");
  // out.println("location='homepage/index4.jsp';");
   out.println("</script>");

    }
        
%>

       <%@include file="bottom1.jsp" %>      
       
       
       
