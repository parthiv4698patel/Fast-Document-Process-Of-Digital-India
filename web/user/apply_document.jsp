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
    Type of Category
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
                <td> <center><a href="Rentagreement.jsp"><input type="button" value="Rent agreement" name="Rentagreement" style="width:200px"></a> </center> </td> 
                <td> <center> <a href="nameaffidavite.jsp"><input type="button" value="Name Change Affidavite" name="name_affidavite" style="width:200px"> </a></center> </td> 
                </tr>
         <tr>
             <td> <center> <a href="vehiclesales.jsp"> <input type="button" value="Vehicle Sales Affidavite" name="address_change_affidavite" style="width:200px"></a></center> </td>
             <td> <center> <a href="truecopy.jsp"><input type="button" value="True Copy" name="true_copy" style="width:200px"></a></center> </td>
           </tr>
         
 </tbody>
</table> 
    </div>
  
    </body>
</html>


 <%@include file="bottom2.jsp" %>
