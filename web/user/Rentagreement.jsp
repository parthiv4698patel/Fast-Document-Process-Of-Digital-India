

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>
<html>
    <body>
                <div class="form-w3layouts">
                <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Rent Agreement 
                            </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal " action="Rentagreement_pro.jsp" method="post">
                                   <center> <h3>Licensor Detail</h3> </center> 
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">Id</label>
                                        <div class="col-lg-6">
                                            <input type="text" class=" form-control" name="id2" value="<%= session.getAttribute( "theName3" ) %>" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">Name</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " name="ofirst_name" value="" maxlength="50" onKeyPress="return ValidateAlpha(event);" required="">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                                            <input type="email" class="form-control " name="oe_mail" value="" required="" maxlength="50" required="required">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Phone no.</label>
                                        <div class="col-lg-6">
                                            <input type="text"  class="form-control " pattern="^\d{10}$" name="oph_no" value="" maxlength="10" oninvalid="this.setCustomValidity('Enter 10 digit number')" required="">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">Address</label>
                                        <div class="col-lg-6">
                                           <input type="text" class="form-control " name="oaddress" value="" maxlength="150" required="required">
                                       </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Pincode</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " pattern="^\d{6}$" name="opin_code" value=""  maxlength="6" oninvalid="this.setCustomValidity('please enter your 6 digit pincode')" required="">
                                        </div>
                                    </div>
                                    
                                        
                                       <center> <h3>Licensee Detail</h3> </center> 
 
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">Name</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " name="rfirst_name" value="" maxlength="50" onKeyPress="return ValidateAlpha(event);" required="">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                                            <input type="email" class="form-control " name="re_mail" value="" required="" maxlength="50" required="required">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Phone no.</label>
                                        <div class="col-lg-6">
                                            <input type="text"  class="form-control " pattern="^\d{10}$" name="rph_no" value="" maxlength="10" oninvalid="this.setCustomValidity('Enter 10 digit number')" required="">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">Address</label>
                                        <div class="col-lg-6">
                                           <input type="text" class="form-control " name="raddress" value="" maxlength="150" required="required">
                                       </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Pincode</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " pattern="^\d{6}$" name="rpin_code" value=""  maxlength="6" required="" oninvalid="this.setCustomValidity('please enter your 6 digit pincode')">
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
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            
           <input type="submit" value="submit" name="submit" class="btn btn-primary" >
                                
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                                        
                     
                                       
                    </section>
                </div>                    
                </div>
                </div>
             

</body>          
 
</html>

<%
    String fa=request.getParameter("already");
    String abc="1";
    if(fa==null)
    {
        
    }
    else if((fa.equals(abc)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('Already exist');");
  // out.println("location='homepage/index4.jsp';");
   out.println("</script>");

    }
        
%>

 <%@include file="bottom2.jsp" %>
