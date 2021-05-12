<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="controleur.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>Mes RDVS</title>
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="style_Menu.css">
	  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	</head>
	<body>

		<!--Menu Principale-->
		    <nav>
		      <input type="checkbox" id="check">
		      <label for="check" class="checkbtn">
		        <i class="fas fa-bars"></i>
		      </label>
		      <label class="logo">Santé avant tout</label>
		      <ul>
		        <li><a href="rdv.jsp">Home</a></li>
		        
		        
   		        <%            
		        String chaine2="";
		        chaine2 += "<li> <a class='active' href='mesrdvs.jsp?action=mesrdvs&numsecu="+ session.getAttribute("NumSecu")+ "'>Mes RDV</li></a>";
out.print(chaine2);
		    		  %>
		        <li><a href="#">Services</a></li>
		        <li><a href="#">Contact</a></li>
		         <li><a href="#">Déconnexion</a></li>
		      </ul>
		    </nav>
		    
		      <center>
		    <h1> Les RDVS Confirmés </h1>
		    </center>
		    <%@include file="vue_mesrdvs.jsp" %>	
		    
<%

if (request.getParameter("action")!=null && request.getParameter("idRdv") != null){
	String action = request.getParameter("action");
	int idRdv = Integer.parseInt(request.getParameter("idRdv"));
	switch(action){
	case "sup" : Controleur.deleteRdv(idRdv); break;

	}
	
}


%>
    
  
		    
		    </body>
		    </html>