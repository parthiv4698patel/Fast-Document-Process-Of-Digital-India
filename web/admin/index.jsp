<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top.jsp" %>

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
                     <br><br><br><br><br><br>              
<%
String query3 = "select * from tbl_register  WHERE type='advocate' and approve='0' ";
int count3=0;
rs=statement.executeQuery(query3);
while(rs.next())
    {
       count3++;
      }

%>

<%


String query4 = "select * from tbl_register  WHERE type='advocate' and approve='1' ";
int count4=0;
rs=statement.executeQuery(query4);
while(rs.next())
    {
       count4++;
      }

%>

<%


String query5 = "select * from tbl_register  WHERE type='client' ";
int count5=0;
rs=statement.executeQuery(query5);
while(rs.next())
    {
       count5++;
      }

%>


<%


String query6 = "SELECT * FROM tbl_register ";
int count6=0;
rs=statement.executeQuery(query6);
while(rs.next())
    {
       count6++;
      }

%>
               
    <div class="agileits-w3layouts-stats">
					<div class="col-md-41 stats-info widget">
						<div class="stats-info-agileits">
							<div class="stats-title">
								<h4 class="title">Analysis</h4>
							</div>
							<div class="stats-body">
								<ul class="list-unstyled">
                                                                    <li>Number Of Pending Advocate<span class="pull-right"><%out.print(count3);%></span>  
										
									</li>
                                                                        
									<li>Number Of Approved Advocate<span class="pull-right"><%out.print(count4);%></span>  
                                                                        </li>
                                                                        
									<li>Number Of Client<span class="pull-right"><%out.print(count5);%></span>  
									</li>
									<li>Number Of Registered Users<span class="pull-right"><%out.print(count6);%></span>  
									</li>
									<li>Number Of visitors<span class="pull-right"><%= application.getAttribute( "hitCounter" ) %></span>  
									</li> 
								</ul>
							</div>
						</div>
                                                                        	
<br><br><br>
					</div>
		

 <%@include file="bottom.jsp" %>