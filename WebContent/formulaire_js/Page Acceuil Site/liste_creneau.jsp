<%@ page import ="controleur.*" %>
<link rel="stylesheet" href="style.css">
<center style="background: white; width:500px;margin-left:auto; margin-right:auto;  border: 2px solid green; color:black; line-height: 3em; margin-top: 10%;">

 <%
 
 String chaine ="";
int numpers = Integer.parseInt(request.getParameter("numpers"));
if (session.getAttribute("NumSecu")!=null){


	  for (Creneau unCreneau : Controleur.selectAllCreneau(numpers))

	  {
		  
	    chaine += "<li> <a href='confirmation.jsp?action=confirmation&id="+unCreneau.getId()+"&numpers="+request.getParameter("numpers")+"'>"+unCreneau.getDate()+"  "+  unCreneau.getHeure() +" "+unCreneau.getHeureFin() ;
		}

out.print(chaine);}
else{
	out.print("absence de session");
}


 %>
 
	</center>	
	