

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>
<html>
   
       
<% String typ=request.getParameter("typee2");
  String a="ra";
  String b="nca";
  String c="vsa";
  String d="poa";
  String e="aca";
  String f="tc";
%>
<center>
    <form action="type_form_process.jsp" method="post">
    <table>
        <tr><td>type</td>
            <td>
<%
if(typ ==null)
{
  
}
else if(typ.equals(a))
{
    out.print("Rent agreement form");
}
else if(typ.equals(b))
{
    out.println("this is nca");
}
else if(typ.equals(c))
{
    out.println("this is vsa");
}

else if(typ.equals(d))
{
    out.println("this is poa");
}

else if(typ.equals(e))
{
    out.println("this is aca");
}

else if(typ.equals(f))
{
    out.println("this is tc");
}



%>

        </td>
        </tr>
                <tr><td>Name</td>  <td><input type="text" name="first_name" value="" maxlength="50">	</td></tr>
                <tr><td>Email </td>  <td><input type="text" name="e_mail" value="" >	</td></tr>
                <tr><td>Phone_no. </td>  <td><input type="text" name="ph_no" value="" maxlength="50">	</td></tr>
                <tr><td>Address </td>  <td><input type="text" name="address" value="" maxlength="50">	</td></tr>
                <tr><td>Pincode </td>  <td><input type="text" name="pin_code" value="" maxlength="50">	</td></tr>
        <div>
          <% if(typ.equals(a)) {%>  <tr><td>Document</td>  <td> <div class="form-group"><select>
                                    <option value="oid" onclick="myFunction()" >Owner Id proof</option>
                                     <option value="rid" onclick="myFunction1()">Rental Id proof</option>
                            </select> </div></td></tr>
                
                <tr><td></td><td><div id="appoinment" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="a" id="a"  >
						
					</div></td></tr>
                 <tr><td></td> <td><div  id="appoinment1" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="b" id="b"  >
						
					</div></td></tr>
          <% }

          else if(typ.equals(b)) {%>  <tr><td>Document</td>  <td> <select>
                                    <option value="onip" onclick="myFunction()">old name Id proof</option>
                                     <option value="nnip" onclick="myFunction1()">New name Id proof</option>
                              </select></td></tr>
                 <tr><td></td><td><div id="appoinment" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="a" id="a"  >
						
					</div></td></tr>
                 <tr><td></td> <td><div  id="appoinment1" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="b" id="b"  >
						
					</div></td></tr>
                
                 
         <% }
          else if(typ.equals(c)) {%>  <tr><td>Document</td>  <td> <select>
                                    <option value="rcc" onclick="myFunction()">RCC</option>
                                     <option value="ooip" onclick="myFunction1()">Old Owner Id Proof</option>
                                     <option value="noip" onclick="myFunction2()">New Owner Id Proof</option>
                                            </select> 	</td></tr>
                
                <tr><td></td><td><div id="appoinment" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="a" id="a"  >
						
					</div></td></tr>
                 <tr><td></td> <td><div  id="appoinment1" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="b" id="b"  >
						
					</div></td></tr>
                 <tr><td></td> <td><div  id="appoinment1" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="b" id="b"  >
						
					</div></td></tr>
                
                 
         <% }
          else if(typ.equals(d)) {%>  <tr><td>Document</td>  <td> <select>
                                    <option value="1nip" onclick="myFunction()">1 name Id proof</option>
                                     <option value="2nip" onclick="myFunction1()">2 name Id proof</option>
                                            </select> 	</td></tr>
                <tr><td></td><td><div id="appoinment" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="a" id="a"  >
						
					</div></td></tr>
                 <tr><td></td> <td><div  id="appoinment1" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="b" id="b"  >
						
					</div></td></tr>
                
                 
         <% }
         else if(typ.equals(e)) {%>  <tr><td>Document</td>  <td> <select>
                                    <option value="onip" onclick="myFunction()">old Address Id proof</option>
                                     <option value="nnip" onclick="myFunction1()">New Address Id proof</option>
                                            </select> 	</td></tr>
               <tr><td></td><td><div id="appoinment" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="a" id="a"  >
						
					</div></td></tr>
                 <tr><td></td> <td><div  id="appoinment1" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="b" id="b"  >
						
					</div></td></tr>
                
                 
        <% }
       else if(typ.equals(f)) {%>  <tr><td>Document</td>  <td> <select>
                                    <option value="volvo" onclick="myFunction()">Original Id</option>
                                     
                                            </select> 	</td></tr>
                <tr><td></td><td><div id="appoinment" style="display: none;">
                                    <div class="form-group">
						<input type="file" name="a" id="a"  >
						
					</div></td></tr>
                 
                 
        <% }%>
           </div>
               <tr><td> 
                       
                <script>
function myFunction() {
  var x = document.getElementById("appoinment");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }

}
function myFunction1() {
  var x = document.getElementById("appoinment1");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }

}
function myFunction2() {
  var x = document.getElementById("appoinment1");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }

}


</script>

</td></tr>
                
                
           </table>
           
           <input type="submit" value="submit" name="submit" >
            
</form>
              

</center>
              
             
</html>
 <%@include file="bottom2.jsp" %>
