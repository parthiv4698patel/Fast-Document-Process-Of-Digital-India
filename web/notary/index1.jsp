
	
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
String query3 = "SELECT * FROM tbl_rent WHERE advocate_id='"+session.getAttribute( "theName3" )+"' ";
int count3=0;
rs=statement.executeQuery(query3);
while(rs.next())
    {
       count3++;
      }

%>

<%


String query4 = "SELECT * FROM tbl_nameaffidavite WHERE advocate_id='"+session.getAttribute( "theName3" )+"' ";
int count4=0;
rs=statement.executeQuery(query4);
while(rs.next())
    {
       count4++;
      }

%>

<%


String query5 = "SELECT * FROM tbl_vehicle WHERE advocate_id='"+session.getAttribute( "theName3" )+"' ";
int count5=0;
rs=statement.executeQuery(query5);
while(rs.next())
    {
       count5++;
      }

%>


<%


String query6 = "SELECT * FROM tbl_truecopy WHERE advocate_id='"+session.getAttribute( "theName3" )+"' ";
int count6=0;
rs=statement.executeQuery(query6);
while(rs.next())
    {
       count6++;
      }

%>

<%


String query7 = "SELECT * FROM tbl_clientappointment WHERE advocate_id='"+session.getAttribute( "theName3" )+"' and status='pending' ";
int count7=0;
rs=statement.executeQuery(query7);
while(rs.next())
    {
       count7++;
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
									<li>Rent Agreement <span class="pull-right"><%out.print(count3);%>%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar green" style="width:<%out.print(count3);%>%;"></div> 
										</div>
									</li>
									<li>Name Change Affidavit<span class="pull-right"><%out.print(count4);%>%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar yellow" style="width:<%out.print(count4);%>%;"></div>
										</div>
									</li>
									<li>Vehicle Sales Affidavit<span class="pull-right"><%out.print(count5);%>%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar red" style="width:<%out.print(count5);%>%;"></div>
										</div>
									</li>
									<li>Truecopy<span class="pull-right"><%out.print(count6);%>%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar blue" style="width:<%out.print(count6);%>%;"></div>
										</div>
									</li>
									<li>Total User<span class="pull-right"><%out.print(count1);%>%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar light-blue" style="width:<%out.print(count1);%>%;"></div>
										</div>
									</li>
									<li class="last">Pending Requests<span class="pull-right"><%out.print(count7);%>%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar orange" style="width:<%out.print(count7);%>%;"></div>
										</div>
									</li> 
								</ul>
							</div>
						</div>
					</div>
		
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@include file="bottom1.jsp" %>
 
