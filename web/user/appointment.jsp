<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="java.sql.*" %>
<%@include file="top2.jsp" %>

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
  

<%
String abc123=request.getParameter("nm");    
String query = "select * from tbl_register  WHERE username='"+abc123+"' ";
//out.print(query);
rs=statement.executeQuery(query);

%>
<%
    String abcd=request.getParameter("ad");
    //out.print(abcd);
%>



<html lang="en">
<head>
    <title>Register</title>
</head>


<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Take Appointment
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                   <form role="form" action="appointment_process.jsp?ad=<%out.print(abcd);%>" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Select Advocate:</label>
                                    <select id="advocate" name="advocate" class="form-control">
                              <%  while(rs.next())
{
    %><option value="<%=rs.getString("id").toString() %>,<%=rs.getTime("s_time").toString() %>,<%=rs.getTime("e_time").toString() %>"><%=rs.getString("username").toString() %></option>
            <%
}
%>
                                    </select>
                        </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"> Date:</label>
                                	
                        <input type="date" name="date" id="date" class="form-control"  required="required" tabindex="4" maxlength="10">
			   
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile"> Time: </label>
                                 <input type="text" value="00:00" name="time" id="time" class="form-control"  tabindex="4" maxlength="20">
			
                                </div>

                                    <input type="submit" value="Appointnment" class="btn btn-info">
                           
                            </form>
                            </div>

                        </div>
                    </section>
            </div>
                                    </div>
                                    </div>

  </html>

 
      
<%
    String fa=request.getParameter("time");
    String abc="fail";
    if(fa==null)
    {
        
    }
    else if((fa.equals(abc)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('please enter correct time ,for EX.06:00 or 23:20 etc.');");
   out.println("</script>");
         
    }
        
%>                  
       
                      
       
<%
    String fa2=request.getParameter("date");
    String abc2="fail";
    if(fa2==null)
    {
        
    }
    else if((fa2.equals(abc2)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('You can not enter before current date');");
   //out.println("location='appointment.jsp';");
   out.println("</script>");
 
    }
        
%>                  
                        
                      
   
 <%@include file="bottom2.jsp" %>