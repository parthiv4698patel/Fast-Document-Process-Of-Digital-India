


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
String query = "SELECT * FROM tbl_register WHERE type='advocate' ";
//out.print(query1);
int count=0;
rs=statement.executeQuery(query);
while(rs.next())
    {
       count++;
      }
//out.print(count);

String query1 = "SELECT * FROM tbl_register WHERE type='client' ";
//out.print(query1);
int count1=0;
rs=statement.executeQuery(query1);
while(rs.next())
    {
       count1++;
      }
//out.print(count1);


String query2 = "SELECT * FROM tbl_register";
//out.print(query1);
int count2=0;
rs=statement.executeQuery(query2);
while(rs.next())
    {
       count2++;
      }
//out.print(count1);

%> 
<div class="market-updates">
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-users"> </i>
					</div>
					 <div class="col-md-8 market-update-left">
					 <h4>Advocates</h4>
					<h3><%out.print(count);%></h3>
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-user"> </i>
					</div>
					 <div class="col-md-8 market-update-left">
					 <h4>Client</h4>
					<h3><%out.print(count1);%></h3>
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-users"> </i>
					</div>
					 <div class="col-md-8 market-update-left">
					 <h4>Total User</h4>
					<h3><%out.print(count2);%></h3>
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
         
                        <div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-eye"> </i>
					</div>
					 <div class="col-md-8 market-update-left">
					 <h4>Visitor</h4>
				<h3><%= application.getAttribute( "hitCounter" ) %></h3>
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
                        
			
	</div>
<br><br><br><br><br><br><br>
                                  <div class="table-agile-info">
        <div class="panel panel-default">
        <div class="panel-heading">
    Document Information
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
        <td>
<h4>Rent agreement Document</h4>

<ul>
  <li>Owner's Id Proof</li>
  <li>Rental's Id Proof</li>
  <li>Proof Of Rent</li>
</ul>  

        </td>
        
        <td>
<h4>Name Change Affidavit Document</h4>

<ul>
  <li>Mistaken Name Id Proof</li>
  <li>Real Name Id Proof</li>
 
</ul>  

        </td>
</tr>
<tr>
    <td>
<h4>Vehicle Sales Document</h4>

<ul>
  <li>Seller's Id Proof</li>
  <li>Buyer's Id Proof</li>
 <li>Rc Book</li>
</ul>  

    </td>
    <td>

<h4>TrueCopy Document</h4>

<ul>
  <li>Truecopy document</li>
 </ul> 
    </td>
</tr>


      
 </tbody>
</table> 
    </div>
        </div>
        </div>
                                  
 <%@include file="bottom2.jsp" %>