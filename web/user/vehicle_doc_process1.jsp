<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>





<%
String saveFile="";

String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);

saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File("C:/Users/User/Documents/NetBeansProjects/final_project/web/image/"+saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%><Br/><table border="1" cellspacing="0" cellpadding="0">
<tr><td><b>You have successfully upload the file by the name of:</b>
<% out.println(saveFile); %></td></tr></table> <%
}
out.println("image upload successfully");
out.println("<br/><a href=fileuploadForm.jsp><b>Back to Home</b></a>");
%>






<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
  
<%
  
    String user_id=request.getParameter("user_id");
    String type="buyer_doc";
 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
String buyer_doc=null;

String query = "insert into tbl_vehicle_doc(user_id,image_name,type) values('"+session.getAttribute( "theName3" )+"','"+saveFile+"','"+type+"')";

            
out.print(query);

statement.executeUpdate(query);

response.sendRedirect("vehicle_doc.jsp");
statement.close();
connection.close();

//pageContext.getOut().println("Record inserted");
/*
	}
	catch(Exception exp)
	{
		out.println("Error in connection");
	}*/
	//response.sendRedirect("../admin/index.jsp?status=1");

 
%> user_id <%= session.getAttribute( "theName3" ) %>




