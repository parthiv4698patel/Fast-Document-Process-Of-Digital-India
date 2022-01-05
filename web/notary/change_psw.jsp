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

String email = request.getParameter("email");
String currentPassword=request.getParameter("current");
String password=request.getParameter("password");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
out.print(request.getParameter("current"));
String query = "SELECT * FROM tbl_register WHERE email='"+session.getAttribute( "theName" )+"'   ";
out.print(query);

String password1=null;
rs=statement.executeQuery(query);

int count=0;
while(rs.next())
    {
        password1=rs.getString("password").toString();
       count++;
    }

out.print(password1);



if(count==1)
{

if(request.getParameter("current").equals(password1))
{
    if(request.getParameter("current").equals(Newpass)){

        out.println("Your Current Password or new password Is Wrong");
        response.sendRedirect("main_changepsw.jsp?status=3");
    }
    else 
            {
        String strQuery = "update tbl_register set password='"+Newpass+"' where email='"+session.getAttribute( "theName" )+"' ";
        out.print(strQuery);
        int i=statement.executeUpdate(strQuery);
        response.sendRedirect("main_changepsw.jsp?status=1");
                
            }
}
else
{
    out.print("Your Current Password Is Wrong");
    response.sendRedirect("main_changepsw.jsp?status=2");
}
statement.close();
connection.close();

}
    
%>