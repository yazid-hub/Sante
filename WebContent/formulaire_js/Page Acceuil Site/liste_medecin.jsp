<%@ page import ="controleur.*" %>
<link rel="stylesheet" href="style.css">
 <center style="background: white; width:500px;margin-left:auto; margin-right:auto;  border: 2px solid green; color:black; line-height: 3em; margin-top: 10%;">
<%

        String chaine ="";

        chaine += "<li>";
        if (session.getAttribute("NumSecu")!=null){

       int numservice = Integer.parseInt(request.getParameter("numservice"));
       
      

       for (Medecin unMedecin : Controleur.selectAllMedecin(numservice))

       {

       chaine += "<li class='button'> <a href='creneau.jsp?action=creneau&numpers="+unMedecin.getNumPers()+"'>" + unMedecin.getNom() + "  " + unMedecin.getPrenom();

       } 

       out.print(chaine);

        }else{
     	   out.print("absence de session");
        }
%>
</center>