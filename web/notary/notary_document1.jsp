<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@include file="top1.jsp" %>

  <form   action="../notary/certi_pro.jsp" method="post"   enctype="multipart/form-data"  >
    
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

        <tr>
            <td> 1 </td>
            <td>
    <label>Certificate</label> 
    <input type="file" multiple="" name="image_name" required="required" ><br>
   
            </td>
     
    <td><input type="submit" value="Upload" >  </td> 
   <td>
   <%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
ResultSet rs1 = null;
String type1=null;


Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();


String query = "SELECT type From tbl_ndoc WHERE user_id='"+session.getAttribute( "theName3" )+"'";
rs=statement.executeQuery(query);
int pan=0,adh=0,vot=0,certi=0;
while(rs.next())
{
    type1=rs.getString("type").toString();
    if(type1.equals("certificate"))
    {
        certi=1;
        //out.println("certificate uploaded");
    }
     
    
     if(type1.equals("aadharcard"))
    {
        adh=1;
        //out.println("aadharcard uploaded");
    }
      
      if(type1.equals("voteridcard"))
    {
        vot=1;
        //out.println("voteridcard uploaded");
    }
       
       if(type1.equals("pancard"))
    {
        pan=1;
        //out.println("pancard uploaded");
    }
       
}%>
<%
    String user_id=request.getParameter("user_id");
    String image_name=request.getParameter("image_name");
    String type="certificate";
     
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
String certificate=null;

String query1 = "SELECT * FROM tbl_ndoc WHERE user_id='"+session.getAttribute( "theName3" )+"' and type='certificate'  ";
//out.print(query1);
String i_nm = null;
rs=statement.executeQuery(query1);
while(rs.next())
    {
        i_nm=rs.getString("image_name").toString();
    }
//out.print(i_nm);
%>
<%
//Display message on this page
       if(certi==1)
    {
        
        //out.println("certificate uploaded");
        //out.print(i_nm);
        %><center>
        <img src="../image/<% out.print(i_nm);%>"  height="50" width="50"/>
        </center>
        <%
    }
    else
        {
          %><center>
        <img src="../image/not_upload.png"  height="50" width="50"/>
        </center>
        <% 
        }
   
%>
 </td>

    <%
        if(certi==1)
        {
            %> <td><a href="../notary/certi_del.jsp">DELETE</a></td> <%
        }
       %>
    
        </tr> 
        </form>
      
    
    
    
    
    
    
    
    
    
    
    <form  action="../notary/aadharcard_pro.jsp" method="post" enctype="multipart/form-data" >
        <tr>
            <td> 2 </td>
            <td>
    <label>Aadhar card </label> 
    <input type="file" multiple="" name="image_name" required="required">
    <br>
            </td>
    <td><input type="submit" value="Upload" ></td> 
    <td>
        <%
    String type2="aadharcard";
     
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
//String certificate=null;

String query3 = "SELECT * FROM tbl_ndoc WHERE user_id='"+session.getAttribute( "theName3" )+"' and type='aadharcard'  ";
//out.print(query1);
String i_nm1 = null;
rs=statement.executeQuery(query3);
while(rs.next())
    {
        i_nm1=rs.getString("image_name").toString();
    }
//out.print(i_nm);
%>

        <%
        if(adh==1)
    {
     %><center>
        <img src="../image/<% out.print(i_nm1);%>"  height="50" width="50"/>
        </center>
        <%   
     }
    else
        {
           %><center>
        <img src="../image/not_upload.png"  height="50" width="50"/>
        </center>
        <% 
        }%>
    </td>
    <%
        if(adh==1)
        {
            %> <td><a href="../notary/aadhar_del.jsp">DELETE</a></td> <%
        }
       %>
     
    
        </tr>
         </form>
       
    
    
    
    
    
    
    
    
    
    
    
    
    
    <form  action="../notary/voterid_pro.jsp" method="post" enctype="multipart/form-data">
         <tr>
             <td>3  </td>
             <td>
    <label>Voterid card</label>
    <input type="file"  multiple="" name="image_name" required="required" >
     <br>
            </td>
    <td><input type="submit" value="Upload" >  </td> 
    <td>
        <%
    String type5="voteridcard";
     
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
//String certificate=null;

String query4 = "SELECT * FROM tbl_ndoc WHERE user_id='"+session.getAttribute( "theName3" )+"' and type='voteridcard'  ";
//out.print(query1);
String i_nm2 = null;
rs=statement.executeQuery(query4);
while(rs.next())
    {
        i_nm2=rs.getString("image_name").toString();
    }
//out.print(i_nm);
%>
       <%
        if(vot==1)
    {
     %><center>
        <img src="../image/<% out.print(i_nm2);%>"  height="50" width="50"/>
        </center>
        <%    
     }
    else
        {
           %><center>
        <img src="../image/not_upload.png"  height="50" width="50"/>
        </center>
        <% 
        }%> 
    </td>
    <%
        if(vot==1)
        {
       %> <td><a href="../notary/voterid_del.jsp">DELETE</a></td> <%
        }
       %>
    
    
         </tr>
           </form>
              
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <form  action="../notary/pancard_pro.jsp" method="post" enctype="multipart/form-data"> 
            <tr>
                <td> 4 </td>
                <td>
    <label>Pancard</label> 
    <input type="file" multiple="" name="image_name" required="required" >
     <br>
                </td>
    <td><input type="submit" value="Upload" >  </td>
    <td>
        <%
    String type6="pancard";
     
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
//String certificate=null;

String query5 = "SELECT * FROM tbl_ndoc WHERE user_id='"+session.getAttribute( "theName3" )+"' and type='pancard'  ";
//out.print(query1);
String i_nm4 = null;
rs=statement.executeQuery(query5);
while(rs.next())
    {
        i_nm4=rs.getString("image_name").toString();
    }
//out.print(i_nm);
%>
        <%
        if(pan==1)
    {
         %><center>
        <img src="../image/<% out.print(i_nm4);%>"  height="50" width="50"/>
        </center>
        <% 
    }
    else
        {
            %><center>
        <img src="../image/not_upload.png"  height="50" width="50"/>
        </center>
        <% 
        }%>
     </td>
    <%
        if(pan==1)
        {
            %><td><a href="../notary/pan_del.jsp">DELETE</a></td> <%
        }
       %>
     
    
            </tr>
             </form>
     </tbody>
</table> 
    </div>
 
     
     
     

</form>
<br><br><br>
        
	

<%@include file="bottom1.jsp" %>