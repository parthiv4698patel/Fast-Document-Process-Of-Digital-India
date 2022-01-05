<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@include file="top2.jsp" %>
<div id="page-wrapper">
			<div class="main-page">
				<div class="blank-page">
                        <center>            
  <%
    String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
 Connection connection = null;
Statement statement = null;
ResultSet rs = null;
ResultSet rs1 = null;
String type1=null;

PreparedStatement ps = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

                    
                    
                    
                    String advocate_id=request.getParameter("id");
   // out.print(advocate_id);
    
if(advocate_id==null)
{
    
}
else
{
String query2 = "UPDATE tbl_nameaffidavite set advocate_id=?  where client_id='"+session.getAttribute( "theName3" )+"' ";
//out.print(query2);

ps = connection.prepareStatement(query2);
ps.setString(1,advocate_id);
int i = ps.executeUpdate();

} 
%>

    
             <div class="table-agile-info">
    <div class="panel panel-default">
    <div class="panel-heading">
    Upload Documents
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
     <form   action="../user/nameaffi_doc_process.jsp" method="post"   enctype="multipart/form-data"  >
        
        <tr>
            <td>Mistaken Name Document </td>
            <td>
    <input type="file" multiple="" name="image_name" required="required" ><br>
   
            </td>
     
    <td><input type="submit" value="Upload" >  </td> 
   <td>
<%





String query = "SELECT * From tbl_nameaffi_doc WHERE user_id='"+session.getAttribute( "theName3" )+"'";
rs=statement.executeQuery(query);

int old=0,real=0;
while(rs.next())
{
    type1=rs.getString("type").toString();
    if(type1.equals("oldname_doc"))
    {
        old=1;
        //out.println("certificate uploaded");
    }
    if(type1.equals("realname_doc"))
    {
        real=1;
        //out.println("aadharcard uploaded");
    }
      
     
   
       
}
%>
<%
    String user_id=request.getParameter("user_id");
    String image_name=request.getParameter("image_name");
    String type="oldname_doc";
     
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
String oldname_doc=null;

String query1 = "SELECT * FROM tbl_nameaffi_doc WHERE user_id='"+session.getAttribute( "theName3" )+"' and type='oldname_doc'  ";
//out.print(query1);
String i_nm = null;
rs=statement.executeQuery(query1);
while(rs.next())
    { 

//out.println(numbers);
        i_nm=rs.getString("image_name").toString();
    
//out.print(i_nm);
%>
<%

      if(old==1)
    {
        String word = rs.getString("image_name");
        int lenght = word.length();
        String numbers = word.substring(word.length() - 3);
       if(numbers.equals("pdf"))
{
    %>
      <a href="../image/<%=rs.getString("image_name")%>"><img src="../image/Pdf-icon.png"  height="100" width="100"/></a>
        
    <%
}// 2 if
else{
%><center>
        <img src="../image/<% out.print(i_nm);%>"  height="100" width="100"/>
        </center>
    <%
}
    }//1 if


    else
        {
          %><center>
        <img src="../image/not_upload.png"  height="50" width="50"/>
        </center>
        <% 
        } 
}
%>
        
 </td>
    
    </tr>

    </form>
    



<form  action="../user/nameaffi_doc_process1.jsp" method="post" enctype="multipart/form-data" >
      
       
        <tr>
            <td>Real Name Document </td>
            <td>
    <input type="file" multiple="" name="image_name" required="required">
    <br>
            </td>
    <td><input type="submit" value="Upload" ></td> 
    <td>
        <%
    String type2="realname_doc";
     
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
//String certificate=null;

String query3 = "SELECT * FROM tbl_nameaffi_doc WHERE user_id='"+session.getAttribute( "theName3" )+"' and type='realname_doc'  ";
//out.print(query1);
String i_nm1 = null;
rs=statement.executeQuery(query3);
while(rs.next())
    { 

//out.println(numbers);
        i_nm1=rs.getString("image_name").toString();
    
//out.print(i_nm);
%>
<%

      if(real==1)
    {
        String word = rs.getString("image_name");
        int lenght = word.length();
        String numbers = word.substring(word.length() - 3);
       if(numbers.equals("pdf"))
{
    %>
      <a href="../image/<%=rs.getString("image_name")%>"><img src="../image/Pdf-icon.png"  height="100" width="100"/></a>
        
    <%
}// 2 if
else{
%><center>
        <img src="../image/<% out.print(i_nm1);%>"  height="100" width="100"/>
        </center>
    <%
}
    }//1 if


    else
        {
          %><center>
        <img src="../image/not_upload.png"  height="50" width="50"/>
        </center>
        <% 
        } 
}
%>
    </td>
    
        </tr>
</form>
    </thead>
          </table>
 <a href="apply_document.jsp" ><button style="color:black">Home</button></a>
    </form>    
  
    
    </form>    
    </center>
      </div>
 </div>
 </div>
    
    
 
 <%@include file="bottom2.jsp" %>