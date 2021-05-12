<%@page import="java.awt.Button"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="controleur.*" %>
  <%@ page import="modele.*" %>
  		<link rel="stylesheet" href="style.css">
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
if(request.getParameter("seconnecter")==null){
	

%>

<%@ include file="vue_inscription.jsp" %>	
<%} %>


<%

	if (request.getParameter("seconnecter")!=null){
			String Mail = request.getParameter("Mail");
			String Password = request.getParameter("Password");
			
			Patient unPat = Controleur.selectWherePatient(Mail,Password);
			
			if(unPat == null){%><%@ include file="vue_inscription.jsp" %>	
			<%
				out.print("Verifier vos identifiants");
				

				
			}else{
%>

				
				
				
				<center style="background: white; border: 5px solid green;color:black; line-height: 3em;">
				 
				 <%  
				out.print("Bienvenue , "+ unPat.getNom()+ "  " + unPat.getPrenom());
				 session.setAttribute("NumSecu", unPat.getNumSecu());
				 
				%>
				</center>
				
				<%@ include file="rdv.jsp" %><%
			}
				
		}

%></center>
	

 
 
<%		

	if (request.getParameter("valider")!=null){
		Patient unPatient = new Patient(
				request.getParameter("Nom"),
				request.getParameter("Prenom"),
				request.getParameter("Tel"),
				request.getParameter("Mail"),
				request.getParameter("Password")

		);
		//insertion dans la base de données :table patient
		Controleur.insertPatient(unPatient);
	}


%>



</body>
</html>