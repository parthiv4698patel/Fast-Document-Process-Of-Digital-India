<%-- 
    Document   : profile_detail
    Created on : Dec 19, 2018, 9:32:43 AM
    Author     : User
--%>
 <%@include file="top2.jsp" %>
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

String query = "SELECT * FROM tbl_register WHERE email='"+session.getAttribute( "theName" ) +"'  ";
//out.print(query);
String pincd=null;
String u_name=null;
String phno=null;
String addrs=null;
rs=statement.executeQuery(query);
while(rs.next())
    {
        pincd=rs.getString("pincode").toString();
        
       u_name=rs.getString("username").toString();
       phno=rs.getString("phone_number").toString();
       addrs=rs.getString("address").toString();
       
    }

/*
out.print(pincd);
out.print(e_mail);
out.print(u_name);
out.print(phno);
out.print(addrs);
*/
 %>
 
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        
        	<div class="form-w3layouts">
                <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            PROFILE DETAIL
                            </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal " action="profile_process2.jsp" method="post">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">Id</label>
                                        <div class="col-lg-6">
                                            <input type="text" class=" form-control" name="id2" value="<%= session.getAttribute( "theName3" ) %>" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">Name</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " name="first_name" onKeyPress="return ValidateAlpha(event);" value="<% out.print(u_name); %>" maxlength="50" >
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " name="e_mail" value="<%= session.getAttribute( "theName" ) %> " disabled>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Phone no.</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " pattern="^\d{10}$" name="ph_no" value="<% out.print(phno); %>" maxlength="10" oninvalid="this.setCustomValidity('Enter 10 digit number')">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">Address</label>
                                        <div class="col-lg-6">
                                            <textarea class="form-control " name="address"  maxlength="150" required="required" oninvalid="this.setCustomValidity('please enter your address')"><% out.print(addrs); %></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Pincode</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " name="pin_code" pattern="^\d{6}$" value="<% out.print(pincd); %>" maxlength="6" oninvalid="this.setCustomValidity('please enter your 6 digit pincode')">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            
                                    <input type="submit" value="Update" class="btn btn-primary">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                                        
                     
                                       
                    </section>
                </div>                    
                </div>
                </div>
                    
     <script>
    function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
    }  
    </script>
            
</html>

 
  <%@include file="bottom2.jsp" %>