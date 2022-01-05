

<%@include file="top1.jsp" %>

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
String client_id=request.getParameter("id");
//out.print(client_id);
//String Id=request.getParameter("id");
//session.setAttribute( "theId", Id );

String query = "SELECT * FROM tbl_rent WHERE advocate_id='"+session.getAttribute( "theName3" )+"' and client_id='"+client_id+"' ";
//out.print(query);

String advo_id=null;
String cl_id=null;
String own_name=null;
String own_email=null;
String own_phone=null;
String own_add=null;
String own_pin=null;

String rn_name=null;
String rn_email=null;
String rn_phone=null;
String rn_add=null;
String rn_pin=null;
rs=statement.executeQuery(query);
while(rs.next())
    {
        advo_id=rs.getString("advocate_id").toString();
       cl_id=rs.getString("client_id").toString();
       own_name=rs.getString("owner_name").toString();
       own_email=rs.getString("owner_email").toString();
       own_phone=rs.getString("owner_phone").toString();
       own_add=rs.getString("owner_add").toString();
       own_pin=rs.getString("owner_pincode").toString();
       
       rn_name=rs.getString("rent_name").toString();
       rn_email=rs.getString("rent_email").toString();
       rn_phone=rs.getString("rent_phone").toString();
       rn_add=rs.getString("rent_add").toString();
       rn_pin=rs.getString("rent_pincode").toString();
    }

//out.print(cl_id);
 %>
 <html>
<body>
    <div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     Rent Agreement Information
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


  
    <tr> <th>Advocate Id</th><td><% out.print(advo_id); %></td></tr>
    <tr><th>Client Id</th><td><% out.print(cl_id); %></td></tr>
        <tr><th>Owner Name</th><td><% out.print(own_name); %></td></tr>
        <tr><th>Owner Email</th><td><% out.print(own_email); %></td></tr>
        <tr><th>Owner Phone</th><td><% out.print(own_phone); %></td></tr>
        <tr><th>Owner Address</th><td><% out.print(own_add); %></td></tr>
   <tr><th>Owner Pincode</th><td><% out.print(own_pin); %></td></tr>
   
   <tr><th>Rental Name</th><td><% out.print(rn_name); %></td></tr>
   <tr><th>Rental Email</th><td><% out.print(rn_email); %></td></tr>
   <tr><th>Rental Phone</th><td><% out.print(rn_phone); %></td></tr>
   <tr><th>Rental Address</th><td><% out.print(rn_add); %></td></tr>
   <tr><th>Rental Pincode</th><td><% out.print(rn_pin); %></td></tr>
   
  
    </thead>
  </table>
    </div>
        <% 
 
  

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

//String user_id1=request.getParameter("user_id");

   // String user_id=request.getParameter("user_id");

String query1 = "SELECT * FROM tbl_rent_doc WHERE user_id='"+cl_id+"'   ";
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
        <thead>


    
            <tr> <th>client_id</th><td><% out.print(cl_id); %></td></tr>
    <%
        int cc=0;
        while(rs.next())
    {
        String word = rs.getString("image_name");
int lenght = word.length();
String numbers = word.substring(word.length() - 3);
//out.println(numbers);
if(numbers.equals("pdf"))
{
        i_nm=rs.getString("image_name").toString();
        type1=rs.getString("type").toString();
        %>
        
        <tr><th><% out.print(type1);%></th><td>
                <a href="../image/<%=rs.getString("image_name")%>"><img src="../image/Pdf-icon.png"  height="100" width="100"/></a>
        </td>
        </tr>

        <%
                        
            cc++;
             }
else{
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

}
//out.print(i_d);
if(cc==0)
{

out.print("No documents uploaded yet");
}
else
{
       
}
 %>
 

 

     
    </thead>
  </table>
   
     
<br><br>

<center><p style="color:blue">If Process Is Completed Then, <a href="rent_delete.jsp?id=<% out.print(client_id); %>&&adv_id=<% out.print(advo_id);%>" style="color: red">Click Here</a></p> </center>



</body>
</html>





<%@include file="bottom1.jsp" %>