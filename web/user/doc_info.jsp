


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>
<html>
    <head>
        
    </head>
        <div class="table-agile-info">
        <div class="panel panel-default">
        <div class="panel-heading">
    Document Information
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
        <td>
<h4>Rent agreement Document</h4>

<ul>
  <li>Owner's Id Proof</li>
  <li>Rental's Id Proof</li>
  <li>Proof Of Rent</li>
</ul>  

        </td>
        
        <td>
<h4>Name Change Affidavit Document</h4>

<ul>
  <li>Mistaken Name Id Proof</li>
  <li>Real Name Id Proof</li>
 
</ul>  

        </td>
</tr>
<tr>
    <td>
<h4>Vehicle Sales Document</h4>

<ul>
  <li>Seller's Id Proof</li>
  <li>Buyer's Id Proof</li>
 <li>Rc Book</li>
</ul>  

    </td>
    <td>

<h4>TrueCopy Document</h4>

<ul>
  <li>Truecopy document</li>
 </ul> 
    </td>
</tr>


      
 </tbody>
</table> 
    </div>
        </div>
        </div>
</html>
 <%@include file="bottom2.jsp" %>