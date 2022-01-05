<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="java.sql.*, java.util.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
ResultSet rs1 = null;
%>

<% 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>
<script>
    
            var today = new Date();
            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());

            var selDate = Date.parse(<%=request.getParameter("date")%>);

            if(selDate < today) {

               alert("ok");
               return;
            }
</script>
<%
    String advocate="";
    if(request.getParameter("advocate") != null && request.getParameter("advocate").split(",").length > 0){
        advocate=request.getParameter("advocate").split(",")[0];
    }
     
      String clientId = session.getAttribute( "theName3" ).toString();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
      String Date=request.getParameter("date");
      LocalDate localDate = LocalDate.parse(Date, formatter);
       String today = LocalDate.now().toString();
       LocalDate xmas = LocalDate.parse(today, formatter);
      Boolean intervalContainsToday = ! xmas.isBefore( localDate ) ;
      if(intervalContainsToday){
           intervalContainsToday = !xmas.isEqual(localDate );
           if(intervalContainsToday){
               response.sendRedirect("/final_project/user/appointment.jsp?date=fail");
          return; 
           }
          
      }
      out.print(intervalContainsToday);
      
     String Time=request.getParameter("time");
    
     
      String d= (new java.util.Date()).toLocaleString();
                        out.print(d);
                        
     
     Matcher matcher;
     Pattern pattern;
      String TIME24HOURS_PATTERN = 
                 "([01]?[0-9]|2[0-3]):[0-5][0-9]";
      pattern = Pattern.compile(TIME24HOURS_PATTERN);
       matcher = pattern.matcher(Time);
      if(!matcher.matches()){
           response.sendRedirect("/final_project/user/appointment.jsp?time=fail");
          return;
      }
      String abcd=request.getParameter("ad");
     out.print(abcd);
     
     String Status="pending";

     
     
 String client_id=session.getAttribute( "theName3" ).toString();
int i=0;  
String i_nm1 = null;
String advocate_id=request.getParameter("advocate_id");
String query1 = "SELECT advocate_id FROM tbl_clientappointment WHERE client_id='"+session.getAttribute( "theName3" )+"' and advocate_id='"+abcd+"'";
//out.print(query1);
int advt=0;
rs=statement.executeQuery(query1);
while(rs.next())
{
   i_nm1=rs.getString("advocate_id").toString();   
    if(i_nm1.equals(abcd))
    {
        advt=1;
        //out.println("certificate uploaded");
    }
}
out.print(i_nm1);

      if(advt==1)
    {
    
    out.print("same");
    response.sendRedirect("/final_project/user/type_appointment.jsp?status=fail");
}
    else
{
    
    out.print("entered");
   
 String query = "insert into tbl_clientappointment(advocate_id,client_id,date,time,status,appstatus) values('"+advocate+"','"+clientId+"','"+Date+"','"+Time+"','"+Status+"','0')";   
 statement.executeUpdate(query);
response.sendRedirect("/final_project/user/client_app_status.jsp");
          
 // response.sendRedirect("appointment.jsp");
 statement.close();
 connection.close();
  }

%>