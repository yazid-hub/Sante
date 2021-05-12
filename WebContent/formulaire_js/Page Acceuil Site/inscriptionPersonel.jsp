<%@ page import="controleur.*" %>
<%@ page import="modele.*" %>

  	
  	
  	<%
if(request.getParameter("seconnecter1")==null){
	

%>

<%@ include file="vue_insert_personel.jsp" %>	
<%} %>
  		

<%@ include file="vue_acceuil_gestion_admin.jsp" %>



<%		

	if (request.getParameter("valider1")!=null){
		Personel unPersonel = new Personel(
				request.getParameter("Nom"),
				request.getParameter("Prenom"),
				request.getParameter("Mail"),
				request.getParameter("Adress"),
				request.getParameter("Ville"),
				request.getParameter("Tel"),
				request.getParameter("DateEmbauche"),
				request.getParameter("mdp")

		);
		//insertion dans la base de données :table patient
		Controleur.insertPersonel(unPersonel);
		}


%>