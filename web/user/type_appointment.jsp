<%-- 
    Document   : apply_document
    Created on : Dec 25, 2018, 9:07:57 AM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     </head>
    <body>
        
        <div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
    Type of Appointment
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
                <td> <center><a href="rentagreement_appointment.jsp"><input type="button" value="Rent agreement" name="Rentagreement" style="width:200px"></a> </center> </td> 
                <td> <center> <a href="nameaffidavit_appointment.jsp"><input type="button" value="Name Change Affidavite" name="name_affidavite" style="width:200px"> </a></center> </td> 
                </tr>
         <tr>
             <td> <center> <a href="vehiclesales_appointment.jsp"> <input type="button" value="Vehicle Sales Affidavite" name="address_change_affidavite" style="width:200px"></a></center> </td>
             <td> <center> <a href="truecopy_appointment.jsp"><input type="button" value="True Copy" name="true_copy" style="width:200px"></a></center> </td>
           </tr>
         
 </tbody>
</table> 
    </div>
  
    </body>
</html>

<%
    String fa1=request.getParameter("status");
    String abc1="fail";
    if(fa1==null)
    {
        
    }
    else if((fa1.equals(abc1)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('oops!!! your appointment is already taken');");
   //out.println("location='appointment.jsp';");
   out.println("</script>");
 
    }
        
%>     
 <%@include file="bottom2.jsp" %>
