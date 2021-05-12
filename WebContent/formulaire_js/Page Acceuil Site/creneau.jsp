<%@ page import ="controleur.*" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="style_Menu.css">
	  <script src="https://kit.fontawesome.com/a076d05399.js"></script><meta charset="UTF-8">
<title>Prise de rendez-vous</title>
</head>
<body>
		    <nav>
		      <input type="checkbox" id="check">
		      <label for="check" class="checkbtn">
		        <i class="fas fa-bars"></i>
		      </label>
		      <label class="logo">SANTE AVANT TOUT</label>
		      <ul>
		        <li><a class="active" href="acceuil.html">Home</a></li>
		        <li><a href="#">About</a></li>
		        <li><a href="#">Services</a></li>
		        <li><a href="#">Contact</a></li>
		      </ul>
		    </nav>
		    <center>
		    <h1> Choisissez un créneau </h1>
		    </center>
		    
		      
		      <li><a class="" href="rdv.jsp" style="  background-color: green; /* Green */
  margin-top :50px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;" >retour</a></li>
  <%@include file="liste_creneau.jsp" %>		

</body>
</html>