<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta charset="utf-8">
    <title></title>
     <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">  
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />        
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"charset="utf-8"></script>
       <script src="https://kit.fontawesome.com/a076d05399.js"></script>
   </head>
<body>
  <!--Menu Principale-->
      <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
          <i class="fas fa-bars"></i>
        </label>
        <label class="logo">SANTé AVANT TOUT</label>
        <ul>
          <li><a class="active" href="index.jsp">Home</a></li>
            <li><a class="" href="acceuilP.jsp"> page principale</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">aide</a></li>
        </ul>
        
      </nav>
  <!--Fin Menu Principale-->

<!-- barre de recherche-->


<style>
.custom-select {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;

}
.container{
 margin-top:200px;
 
 }
</style>

<div class="container">
  <form action="/recherche/" method="get">
    <fieldset>    
      <div class="input-group">
        <div class="input-group-prepend">
          <select id="oCategorie" name="oCategorie" class="custom-select bg-success text-light">
            <option selected="selected" value="0">Categorie</option>
            <option value="1">...</option>
          </select>
        </div>
        <input id="oSaisie" name="oSaisie" type="text" class="form-control" aria-label="Saisie de mots clés" placeholder="Mot(s) cle(s)" required="required">
        <div class="input-group-append">
          <button class="btn btn-success" type="submit">Recherche</button>
        </div>
      </div>
    </fieldset> 
  </form>
</div>


  <section class="about fabout" id="">
        <div class="max-width">
            <h2 class="title"></h2>
            <div class="about-content">
                <div class="column left">
                    <img src="2.jpg" alt="">
                </div>
                <div class="column right">
                    <div class="text" >Bienvenue au CENTRE DE SANTE avant tout <span class="typing-2"></span></div><p style='text-transform: uppercase;'>
                    <p>
Attentif aux besoins de la population locale, le centre de sante, situe a Paris, propose des consultations en medecine generale, des consultations specialisees
 - en cardiologie (dont echographies cardiaques et test pcr), des consultations de sages-femmes (dont echographies) ainsi que de nouvelles activites en pneumologie (EFR et polygraphie respiratoire du sommeil),
  en médecine physique et de réadaptation (MPR)  et dentaires (omnipratique et implantologie) - sur rendez-vous via le Centre de Sante avant tout .

Le centre de sante est installe au cœur de paris, etablissement de Soins de Suite et de Readaptation specialise dans la prise en charge des affections neurologiques, 
pneumologiques, locomoteur ainsi que des personnes agees dependantes ou à risque de le devenir.</p>
                    <a href="">Savoir plus</a>
                </div>
            </div>
        </div>
    </section>
<!--fin barre de recherche -->

<!--debut section page acceuil -->
<section class="teams" id="teams">
      <div class="max-width">
          <h2 class="title"></h2>
          <div class="carousel owl-carousel">
              <div class="card">
                  <div class="box">
                    <a href ="inscription.jsp">  <img src="rdv.jpg" alt=""></a>
                      <div class="text">Prendre un rdv au centre</div>
                  </div>
              </div>
              <div class="card">
                  <div class="box">
                     <a href ="inscription.jsp">  <img src="1.jpg" alt=""></a>
                      <div class="text">Prendre RDV Visuel</div>
                  </div>
              </div>
              <div class="card">
                  <div class="box">
                      <a href ="inscription.jsp"> <img src="3.jpg" alt=""></a>
                      <div class="text">RESERVER UN TEST PCR</div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!--fin section page acceuil -->
  
  
  <%@include file ="vue_footer.jsp"%>

  
</body>
 </html>
