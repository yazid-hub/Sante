
<html>

<%@ page import ="controleur.*" %>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste services</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>
  <body>
<!--Menu Principale-->
    <nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="logo">SANTE AVANT TOUT</label>
      <ul>
        <li><a class="active" href="#index.jsp">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
<!--Fin Menu Principale-->


<br>
<br>
<br>

    <center>
		    <h1> Gestions Listes des  Services </h1>
		    </center>
		    
		    
		    
  <!--form area start-->
		<div class="form">
			<!--login form start-->
			<form class="login-form" action="liste_service_admin.jsp" method="post">
				<i class="fas fa-user-plus" style="color:green;"></i>
				<input class="user-input"  type="text" name="Lib" placeholder="Libellé" required >
				
					
			<input class="btn" type="submit" name="Ajouter" value="Ajouter">
				
					</div>
				
			</form>
			<!--login form end-->
		</script>
 <center style="background: white; width:500px;margin-left:auto; margin-right:auto;  border: 2px solid green; color:black; line-height: 3em; margin-top: 10%;">



<%

       
       
        
        if (session.getAttribute("Numpreso")!=null ){
        	 String chaine ="";
        for (Service unService : Controleur.selectAllServices())
        {
        
        	 chaine += "<li>";
            		chaine+=  unService.getLibelle()  ;
            		 chaine +="<td> <a  style='background:red; color:white' href='liste_service_admin.jsp?action=sup&Numservice="+unService.getNumService()+"'> " 
                        		
            		+ " <br> "+"<img src='sup.png'height='30' witdh='30' style='background:red; color:white;flex-direction:column;'></a></td></br>";
    	   
    	   chaine+= "</tr>";
     	   
  
        }
        out.print(chaine);
    }else{
    	out.print("absence de session");
    }
       
    %>
  <%
	if (request.getParameter("Ajouter")!=null){
		Service unService = new Service(
				
				request.getParameter("Lib")				
				);
				
		Controleur.insertService(unService);
		
	}
  
  
  %>

 

  
  
  
  </body>
  
</html>