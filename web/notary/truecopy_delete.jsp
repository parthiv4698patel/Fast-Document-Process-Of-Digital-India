<%@page import="java.io.File"%>
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

String advo_id=request.getParameter("adv_id");
out.print(client_id);
out.print(advo_id);

String query = "delete  from tbl_truecopy where client_id='"+client_id+"' and advocate_id='"+advo_id+"' ";
out.print(query);
statement.executeUpdate(query);


String query2 = "select * from tbl_true_doc where user_id='"+client_id+"' ";
out.print(query2);
rs=statement.executeQuery(query2);
while(rs.next())
{
String img=rs.getString("image_name").toString();
out.print(img);

File f=new File("C:/Users/User/Documents/NetBeansProjects/final_project/web/image/"+img);
f.delete();
}

rs.close();


String query1 = "delete  from tbl_true_doc where user_id='"+client_id+"' ";
out.print(query1);

statement.executeUpdate(query1);

response.sendRedirect("view_truecopy.jsp?del=success");
%>