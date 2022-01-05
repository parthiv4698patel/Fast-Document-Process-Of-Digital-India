<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>
<style>
    .myspan 
    {
  color: green;
  font-size: 20px;
    }
.myred
    {
  color: red;
  font-size: 20px;
    }
</style>



 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        	<div class="form-w3layouts">
                <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           CHANGE PASSWORD
                            </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal " action="change_psw.jsp" method="post">
                                   <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control " name="e_mail" value="<%= session.getAttribute( "theName" ) %> " disabled>
                                        </div>
                                   </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">Current Password</label>
                                        <div class="col-lg-6">
                                            <input type="password" name="current" class="form-control " maxlength="8">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">New Password</label>
                                        <div class="col-lg-6">
                                            <input type="password" name="new" id="password" class="form-control " maxlength="8">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Confirm Password</label>
                                        <div class="col-lg-6">
                                            <input type="password" name="confirm" id="password_confirmation" class="form-control " maxlength="8">
                                         </div>
                                    </div>
                                        <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                    
                                            <input type="submit" class="btn btn-primary" value="Change Password" onclick="return Validate()">
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



<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var password_confirmation = document.getElementById("password_confirmation").value;
        if (password!==(password_confirmation)) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>

</table>
<% String s=request.getParameter("status");
  String ab="1";
  String bc="3";

if(s==null)
{
  
}
else if(s.equals(ab))
{ 
   out.println("<script type=\"text/javascript\">");
   out.println("alert('your current password is updated');");
   out.println("</script>");
}
else if(s.equals(bc))
{
   out.println("<script type=\"text/javascript\">");
   out.println("alert('Your Current Password or new password Is Wrong');");
   out.println("</script>");
}
else
{
   out.println("<script type=\"text/javascript\">");
   out.println("alert('Your Current Password Is Wrong');");
   out.println("</script>");
}

%>
<%@include file="bottom2.jsp" %>