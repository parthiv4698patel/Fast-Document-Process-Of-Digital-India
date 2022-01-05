<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top1.jsp" %>

 


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>table</title>
        <style>
            h1 {color: red;}
        </style>
    </head>
    
        


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
  <div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     
  Name Change Affidavit List
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

  
   <%
String query = "select * from tbl_nameaffidavite  WHERE advocate_id='"+session.getAttribute( "theName3" )+"' ";

int count=0;
rs=statement.executeQuery(query);
while(rs.next())
{
     count++;
   
    %>
    <tr>
     <th>User Id</th>
    <th>Name</th>
    
    
    <th>Details</th>
      
  </tr>
  
    </thead>
     <tbody>
 
      <tr >
    <td><%=rs.getString("client_id").toString() %></td>
    <td><%=rs.getString("n_name").toString() %></td>
       
      
       <td><a href="detail_nameaffidavit.jsp?id=<%=rs.getString("client_id").toString() %> && advocate_id=<%=session.getAttribute( "theName3" )%>">Details</a></td>
         
    </tr>
    <%
    
}
%>
       <% 
if(count==0)
    {
 %>  
 <p><font color="red"><%out.println("Opps No Data Available..");%></font></p>
 <%
   
   

     }
%>
 
      </tbody>
</table> 
    </div>
         
   <%
    String fa=request.getParameter("del");
    String abc="success";
    if(fa==null)
    {
        
    }
    else if((fa.equals(abc)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('Record Delete Successfully');");
  // out.println("location='homepage/index4.jsp';");
   out.println("</script>");

    }
        
%>    
       
      
    


       
       
       
       
      
    


 
 <%@include file="bottom1.jsp" %>