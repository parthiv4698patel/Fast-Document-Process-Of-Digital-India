<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>

<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" action="register_process.jsp" method="post">
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			
				
                        <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="User Name" required="required" tabindex="4" maxlength="50" onKeyPress="return ValidateAlpha(event);" >
					
                            <br>
                            
                        <div class="form-group">
				<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" required="required" tabindex="4" maxlength="30" oninvalid="this.setCustomValidity('Enter your email!!')" ">
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" required="required" tabindex="5" maxlength="8">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" required="required" tabindex="6" maxlength="8">
					</div>
				</div>
			</div>
                        
                        <div class="form-group">
				<input type="text" name="mobile" id="mobile" pattern="^\d{10}$" class="form-control input-lg" placeholder="Mobile Number(10 Digit)" required="required" tabindex="4" maxlength="10" oninvalid="this.setCustomValidity('Enter 10 digit number')">
			</div>
                        
                       
                        <div class="form-group">
				<input type="text" name="pin" id="pin" class="form-control input-lg" placeholder="Pincode" required="required" tabindex="4" maxlength="6">
			</div>
                        
			<div class="form-group">
                            Choose your account type: &nbsp;  <input type="radio" name="type1"  value="client"/> Client  &nbsp; <input type="radio" name="type1"  value="advocate" onclick="myFunction()"/>  Advocate
                        </div>
                            <div class="row" id="appoinment" style="display: none;">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="aStartTime" id="aStartTime" class="form-control input-lg" placeholder="Start Time 00:00" tabindex="5" maxlength="8">
						
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="aEndTime" id="aEndTime" class="form-control input-lg" placeholder="End Time 00:00" tabindex="6" maxlength="8">
					</div>
				</div>
			</div>
		
<script>
function myFunction() {
  var x = document.getElementById("appoinment");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }

}
</script>

	
				
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"  onclick="return Validate()"></div>
				
			
                                <div class="col-xs-12 col-md-6"><a href="index.jsp" ><input type="button" value="Back" class="btn btn-primary btn-block btn-lg" tabindex="7" ></a></div>
				
			</div>
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
 
 
		</form>
	</div>
</div>
</div>
</html>
<script>
    function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
    }  
    </script>

<%
    String fa=request.getParameter("status");
    String abc="fail";
    if(fa==null)
    {
        
    }
    else if((fa.equals(abc)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('your email already exist');");
  // out.println("location='homepage/index4.jsp';");
   out.println("</script>");

    }
        
%>
