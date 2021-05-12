<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="controleur.*" %>
<%@ page import="java.util.ArrayList" %>
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
		      <label class="logo">Santé avant tout</label>
		      <ul>
		        <li><a class="active" href="index.jsp">Home</a></li>
		           		        <%            
		        String chaine2="";
		        chaine2 += "<li> <a href='mesrdvs.jsp?action=mesrdvs&numsecu="+ session.getAttribute("NumSecu")+ "'>Mes RDV</li></a>";
out.print(chaine2);
		    		  %>
		        <li><a href="#">Services</a></li>
		        <li><a href="#">Contact</a></li>
		         <li><a href="#">Déconnexion</a></li>
		      </ul>
		      
<%@include file="vue_confirmation.jsp" %>	





</body>
</html>