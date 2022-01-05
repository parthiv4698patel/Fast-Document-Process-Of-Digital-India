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
%>

<%
     //String c_id=request.getParameter("id2");
   //out.print(c_id);
    String oname=request.getParameter("ofirst_name");
    String oemail=request.getParameter("oe_mail");
    String ophone=request.getParameter("oph_no");
    String oadd=request.getParameter("oaddress");
    String opin=request.getParameter("opin_code");
    //String odocument=request.getParameter("odoc");
    
   String ad_id=null;
    
       
     
     String client_id=session.getAttribute( "theName3" ).toString();
int i=0;  
String query1 = "SELECT * FROM tbl_nameaffidavite WHERE client_id='"+client_id+"'";
//out.print(query1);
rs=statement.executeQuery(query1);

while(rs.next())
{
    i++;
}
if(i>0)
{
    response.sendRedirect("nameaffidavite.jsp?already=1");
}
    else{


    String query = "insert into tbl_nameaffidavite(advocate_id,client_id,n_name,n_email,n_phone,n_add,n_pincode) values('"+ad_id+"','"+session.getAttribute( "theName3" )+"','"+oname+"','"+oemail+"','"+ophone+"','"+oadd+"','"+opin+"')";
    out.print(query);
   
statement.executeUpdate(query);
statement.close();
connection.close();
pageContext.getOut().println("Record inserted");
/*
	}
	catch(Exception exp)
	{
		out.println("Error in connection");
	}*/
	response.sendRedirect("inform_search_advoname.jsp");

}
    
%>    

