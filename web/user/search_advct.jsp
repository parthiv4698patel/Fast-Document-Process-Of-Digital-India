
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>

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


 
<br>
    
<form action="../user/search_advct.jsp" method="post">
    

<center>
    Enter Pincode: <input type="text" name="data1" value="" maxlength="6"/> <input type="submit" value="search" name="search"/>

</center>  
</form>

<%
String query;
if(request.getParameter("data1")!=null)
    {
     query = "select * from tbl_register where type='advocate' and approve='1' and pincode='"+request.getParameter("data1")+"%'";

    
    }
else
    {
     query = "select * from tbl_register  where type='advocate' and approve='1'";
     
    
}


%>

<br>
<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     
  Advocate list
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
            
    <th>Name</th>
    <th>Address</th>
     <th>Email</th>
    <th>Mobile Number</th>
    <th>Pincode</th>
    <th>starting time</th>
     <th>ending time</th>
   
    
    
  </tr>
  

    </thead>
     <tbody>
 
<%
int count=0;
rs=statement.executeQuery(query);
while(rs.next())
{
    count++;
    %>
      <tr >
          
    <td><%=rs.getString("username").toString() %></td>
       <td><%=rs.getString("address").toString() %></td> 
      <td><%=rs.getString("email").toString() %></td> 
      <td><%=rs.getString("phone_number").toString() %></td> 
      <td><%=rs.getString("pincode").toString() %></td> 
      <td><%=rs.getTime("s_time").toString() %></td> 
      <td><%=rs.getTime("e_time").toString() %></td> 
      
       
    
    </tr>
    <%    
}

%>


    
  
  
 
</table>
<% 
if(count==0)
    {
 %>  
 <p><font color="red"><%out.println("Opps No Data Found..");%></font></p>
 <%
   
   

     }
%>
 </tbody>
</table> 
    </div>
     
<%@include file="bottom2.jsp" %>