<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>Login Page</title>
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="style_Menu.css">
	  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	  <script src="script.js"></script>
	</head>
	<body>

		<!--Menu Principale-->
		    <nav>
		      <input type="checkbox" id="check">
		      <label for="check" class="checkbtn">
		        <i class="fas fa-bars"></i>
		      </label>
		      <label class="logo">SANTE AVANT TOUT</label>
		      <ul>
		        <li><a class="active" href="index.jsp">Home</a></li>
		        <li><a href="acceuilP.jsp">page principale</a></li>
		        <li><a href="#">Services</a></li>
		        <li><a href="#">Contact</a></li>
		      </ul>
		    </nav>
		<!--Fin Menu Principale-->
		<!--form area start-->
		<div class="form">
			<!--login form start-->
			<form class="login-form" action="" method="post">
				<i class="fas fa-user-circle" style="color:green;"></i>
				<input class="user-input"  type="text" name="Mail" placeholder="Pseudo" required >
				<input class="user-input" type="password" name="mdp" placeholder="Mot de passe" required>
				<div class="options-01">
					<label class="remember-me"><input type="checkbox" name="">Souviens de moi</label>
					<a href="#">Mot de passe oublier?</a>
				</div>
			<input class="btn" type="submit" name="seconnecter1" value="Login">
				<div class="options-02">
					<p>Vous etes pas inscrit ? <a href="#">Créer un compte</a></p>
				</div>
			</form>
			<!--login form end-->
			<!--signup form start-->
			<form class="signup-form" action="" method="post">
				<i class="fas fa-user-plus"style="color:green;"></i>
				<input class="user-input" type="text" name="Nom" placeholder="Nom" id="nom" required  onblur="traiterNom()">
				<input class="user-input" type="text" name="Prenom" placeholder="Prenom" id="Prenom"  required onblur="traiterPrenom()" >
				<input class="user-input" type="text" name="Mail" placeholder="Email" required id="email" required onblur="validate()">
				<span id="msge"></span> 
				<input class="user-input" type="text" name="Adress" placeholder="Adress" required id="adress" required onblur="">
				<input class="user-input" type="text" name="Ville" placeholder="Ville" required id="ville" required onblur="">
				<input class="user-input" type="text" name="Tel" placeholder="Tel" id="telephone" required onblur="traiterNumero()" >
				<input class="user-input" type="text" name="DateEmbauche" placeholder="DateEmbauche" required id="dateEmbauche" required onblur="">
				<input class="user-input" type="password" name="mdp" id="mdp" placeholder="Mot de passe"  required onblur="checkmdp()" >
				<span id="msg"></span> 
				<input class="btn" type="submit" name="valider1" value="S'inscrire">
				<div class="options-02">
					<p>Vous etes deja inscrit ? <a href="#">Connectez-vous</a></p>
				</div>
			</form>
			<!--signup form end-->
		</div>
		<!--form area end-->

		<script type="text/javascript">
		$('.options-02 a').click(function(){
			$('form').animate({
				height: "toggle", opacity: "toggle"
			}, "slow");
		});
		
		
		</script>
		
		<%@include file ="vue_footer.jsp"%>

	</body>
</html>
