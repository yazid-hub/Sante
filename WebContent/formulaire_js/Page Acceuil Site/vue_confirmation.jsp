<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="controleur.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import ="modele.*" %>

<link rel="stylesheet" href="style.css">

<center style="background: white; width:500px;margin-left:auto; margin-right:auto;  border: 2px solid green; color:black; line-height: 3em; margin-top: 10%;">

<%

			String chaine ="";
			int id = Integer.parseInt(request.getParameter("id"));
			int numpers = Integer.parseInt(request.getParameter("numpers"));
			chaine += "<li>";
			if (session.getAttribute("NumSecu")!=null){
			
			for(Medecin_creneau unMC : Controleur.selectAllMC(id,numpers)){
				
			    chaine += "<li style='font-weight:bold;'>" + "Pour confirmer le rendez vous du " +"  "+ unMC.getJour()+ "  " +" à  " + unMC.getHeure()+"   "+ "<br>avec le Dr" + "  <span style='color:green;'> "+unMC.getNom() + " " + unMC.getPrenom()+ 
			    		" </span> <br> Veuillez entrez les chiffre suivant dans le formulaire ci dessous<br> " +"  " +session.getAttribute("NumSecu")+" - " +"  " + unMC.getNumPers() +" - " + unMC.getId()+"</li>";

				}


			out.print(chaine);
			}else{
		   out.print("absence de session");
 		}

%>

	<div class="form">
			
			<form class="login-form" action="" method="post">
				<input class="user-input"  type="number" name="NumSecu" placeholder="Chiffre 1" required >
				<input class="user-input" type="number" name="NumPers" placeholder="Chiffre 2" required>
				<input class="user-input" type="number" name="Id" placeholder="Chiffre 3" required>
				
			<input class="btn" type="submit" name="valider" value="Confirmer" onclick='valider()'>
			</form>


</center>
		<%

	if (request.getParameter("valider")!=null){
		Rdv unRdv = new Rdv(
				Integer.parseInt(request.getParameter("NumSecu")),
				Integer.parseInt(request.getParameter("NumPers")),
				Integer.parseInt(request.getParameter("Id"))


		);
		//insertion dans la base de données :table Client
		Controleur.insertRDV(unRdv);
	}
%>

<%@include file ="vue_footer.jsp"%>