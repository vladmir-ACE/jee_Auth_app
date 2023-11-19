<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="Assets/bootstrap/css/bootstrap.min.css">
	
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="Assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>


<body>

<c:if test="${message!=null}">

<div class="alert alert-success alert-dismissible">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <strong>${message}</strong>
 </div> 
 </c:if>



<div id="Login" class="container-fluid" style="width:100%" >
	<div class="row justify-content-between g-4" style="width:100% ;">
		
		<div class="col-md-6 bg-dark" style="height:600px;">
		  
		 
		  <div style="margin-top:20px">
		         <script src="https://unpkg.com/@dotlottie/player-component@latest/dist/dotlottie-player.mjs" type="module"></script> 
		    <dotlottie-player src="https://lottie.host/9a4ab51e-0a9d-463b-afa0-ba98df89a880/8iAzCfTAGj.json" background="transparent" speed="1" style="width: 500px; height: 500px;" loop autoplay></dotlottie-player>
		  
		  </div>
		  
		  
		</div>
		
		<div class="col-md-6" style="margin-top:10%">
		
		<h1 class="text-center">LOGIN</h1>
		
		
		<div class="d-flex justify-content-center align-items-center" style="width:100%">
		
		   <div class="card">
		   
		        <div class="card-title align-self-center">
		         <img alt="" src="Assets/secu.png" style="width:100px; height:100px;">
		        
		        </div>
		        
		        <div class="card-body">
		        
		        <form method="post" action="Login">
		        
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text text-white bg-dark" id="basic-addon1">@</span>
				  </div>
				  <input type="text" name="username" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<div class="input-group mb-3">
				  <input type="password" name="password" class="form-control" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2">
				  <div class="input-group-append ">
				    <span class="input-group-text text-white bg-dark" id="basic-addon2">@*****</span>
				  </div>
				</div>
				
				<button type="submit" class="btn btn-dark" style="margin-left:30%">Connexion</button> <br>
		        
		        <p class="text text-primary" id="NoCount">Pas de compte?</p>
		       	        		        
		      
		        </form>		        		        
		        
		        </div>
		   
		   </div>
		
		</div>
		
	</div>
		
</div>
		

</div>


<div id="SignUp" class="container-fluid" style="width:100%" hidden >

	<div class="row justify-content-between g-4" style="width:100% ;">
		
		<div class="col-md-6" style="margin-top:5%">
		
		<h1 class="text-center">SIGN UP</h1>
		
		
		<div class="d-flex justify-content-center align-items-center" style="width:100%">
		
		   <div class="card">
		   
		        <div class="card-title align-self-center">
		         <img alt="" src="Assets/secu.png" style="width:100px; height:100px;">
		        
		        </div>
		        
		        <div class="card-body">
		        
		        <form  method="post" action="Signup">
		        <div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text text-white bg-dark" id="basic-addon1">Nom</span>
				  </div>
				  <input type="text" name="nom" class="form-control" placeholder="Nom" aria-label="Nom" aria-describedby="basic-addon1">
				</div>
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text text-white bg-dark"  id="basic-addon1">Prenom</span>
				  </div>
				  <input type="text" name="prenom" class="form-control" placeholder="Prenom" aria-label="Prenom" aria-describedby="basic-addon1">
				</div>
				
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text text-white bg-dark" id="basic-addon1">Email@</span>
				  </div>
				  <input type="email" name="email" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="basic-addon1">
				</div>
		        
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text text-white bg-dark" id="basic-addon1">@</span>
				  </div>
				  <input type="text"name="username"  class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<div class="input-group mb-3">
				  <input type="password" class="form-control" name="password" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2">
				  <div class="input-group-append ">
				    <span class="input-group-text text-white bg-dark" id="basic-addon2">@*****</span>
				  </div>
				</div>
				
				<button type="submit" class="btn btn-dark" style="margin-left:30%">Create acount</button> <br>
		        
		        <p  class="text text-end text-primary" id="Connect">connectez vous ></p>
		       	        		        
		
		        </form>		        		        
		        
		        </div>
		   
		   </div>
		
		</div>
	
	</div>
	<div class="col-md-6 bg-dark" style="height:600px;">
		  
		 
		  <div style="margin-top:20px">
		         <script src="https://unpkg.com/@dotlottie/player-component@latest/dist/dotlottie-player.mjs" type="module"></script> 
		    <dotlottie-player src="https://lottie.host/9a4ab51e-0a9d-463b-afa0-ba98df89a880/8iAzCfTAGj.json" background="transparent" speed="1" style="width: 500px; height: 500px;" loop autoplay></dotlottie-player>
		  
		  </div>
		  
		  
		</div>
	
		
</div>
		

</div>



<script type="text/javascript">

$(function(){
	
	

$("#NoCount").click(function(){
	$("#Login").attr("hidden",true);
    $("#SignUp").removeAttr("hidden");	
});

$("#Connect").click(function() {
	
    $("#SignUp").attr("hidden",true);	
	$("#Login").removeAttr("hidden");

	
	
})
	

	
	
	
	
	
});
	








</script>



</body>
</html>