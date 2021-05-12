<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="controleur.*" %>
<%@ page import ="modele.*" %>

<link rel="stylesheet" href="style.css">

<center style="background: white; width:500px;margin-left:auto; margin-right:auto;  border: 2px solid green; color:black; line-height: 3em; margin-top: 10%;">
 <%

 
       
        
        try{
 int numsecu = Integer.parseInt(request.getParameter("numsecu"));
       
   if (session.getAttribute("NumSecu")!=null){   
  
	   String chaine ="";
       for (Rdv unRdv : Controleur.selectAllRdvs(numsecu))
  
       
    	   {
    	   
    	   chaine += "<tr>";
    	   chaine += "<li style='background:green; color:white;font-weight: bold;'>" +"Le Rendez-vous numéro :"+unRdv.getIdRdv()+" "+ "</li>";
               chaine +="<li >"+"Docteur :<span style='color:green;font-weight: bold'>"+unRdv.getJour()+" "+ "" +unRdv.getHeure() +"</span> "+ "</li>";
               chaine += "<li>" +"Date de Rendez-vous :"+ unRdv.getNom() +" "+ "</li>";
               chaine += "<li>" +"L'heure de Rendez-vous :"+unRdv.getPrenom ()+" "+ "</li>";
               
    	   chaine +="<td> <a  style='background:red; color:white' href='mesrdvs.jsp?action=sup&idRdv="+unRdv.getIdRdv()+"'> " 
              		
            		+ "  "+"<img src='sup.png'height='30' witdh='30' style='background:red; color:white;flex-direction:column;'></a></td></br>";
    	   
    	   chaine+= "</tr>";
       } 
       out.print(chaine);
   
   }else{
	   out.print("absence de session");
   }
        }catch(NumberFormatException exp ){
        	out.print("votre RDV a bien été supprimer");
        }
%>
  </center>  
  
  
  
