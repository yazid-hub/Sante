<%@ page import ="controleur.*" %>
<link rel="stylesheet" href="style.css">
 <center style="background: white; width:500px;margin-left:auto; margin-right:auto;  border: 2px solid green; color:black; line-height: 3em; margin-top: 10%;">

<%
	   
        String chaine ="";
        chaine += "<li>";
        if (session.getAttribute("NumSecu")!=null ){
        for (Service unService : Controleur.selectAllServices())
        {
            chaine += "<li class='button' ><a href='medecin.jsp?action=medecin&numservice="+ unService.getNumService()+"'</li>"
            		
            		+  unService.getLibelle() ;
  
        }
        out.print(chaine);
    }else{
    	out.print("absence de session");
    }
    %>
    
  </center>
  
  
  
  
  