<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   		
   <!DOCTYPE html>
<html>
<head>
	  
	  <link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="style_Menu.css">
	  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	  <script src="script.js"></script>
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
		        <li><a class="active" href="#">Home</a></li>
		        
		        <li><a href="#">Services</a></li>
		        <li><a href="#">Contact</a></li>
		        <li><a href="vue_inscription.jsp">Déconnexion</a></li>
		      </ul>
		    </nav>
      <center>
      <br>
      <br>
      <br>
      <h1> Choisissez un rendez vous </h1>
      </center>
      
   
      		<%@include file="liste_service_admin.jsp" %>	
      		
    <%

if(request.getParameter("action")!=null && request.getParameter("Numservice") != null){
	String action = request.getParameter("action");
	int Numservice = Integer.parseInt(request.getParameter("Numservice"));
	switch(action){
	case "sup" : Controleur.deleteService(Numservice); break;

	}
	
}


%>
<br>
	  </center>

      
</body>
</html> 
