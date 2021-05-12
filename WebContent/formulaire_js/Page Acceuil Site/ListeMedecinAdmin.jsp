<%@ page import ="controleur.*" %>
<link rel="stylesheet" href="style.css">

<%@include file="vue_liste_medecin_admin.jsp" %>
 <center style="background: white; width:500px;margin-left:auto; margin-right:auto;  border: 2px solid green; color:black; line-height: 3em; margin-top: 10%;">
 

     
      
       
      

 

        


	<%
	String chaine="";
	
	  for (Medecin unMedecin : Controleur.selectAllMedecins())
	{	
		chaine+="<tr>";
		chaine +="<td>" +unMedecin.getNumPers()+"</td>";
		chaine +="<td>" +"  "+unMedecin.getNumService()+"</td>";
		chaine +="<td>"+"   "+unMedecin.getNom()+"</td>";
		chaine +="<td>"+ "  "  +unMedecin.getPrenom()+"</td>";
	
		
		chaine+= "<td> <a href='index.jsp?page2&action=sup&numPerso="+unMedecin.getNumPers()+"'> "
				+"<img src='sup.png' height='30' witdh='30'> </a></td><br>";
				
				
		chaine+="</tr>";
	}
	
	
	out.print(chaine);
	
	%>
	
	
</center>