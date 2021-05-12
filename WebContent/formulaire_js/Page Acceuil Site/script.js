/**
 * 
 */
function traiterNom(){
    var nom =document.getElementById("nom").value;
    if(nom.length<3 ||nom.length>20){
        alert("votre nom n est pas valide");
    }
}

function traiterPrenom(){
    var Prenom =document.getElementById("Prenom").value;
    if(Prenom.length<3 ||Prenom.length>20){
        alert("votre Prénom n'est pas valide");
    }
}
function traiterProfission(){
    var Profession =document.getElementById("Profession").value;
    if(Profession.length<3 ||Profession.length>30){
        alert("votre Profession n'est pas valide");
    }
}
        
   function traiterEmail(){
                var mail = document.getElementById("email").value;         
               
             if(mail.indexOf("@") == -1 || mail.indexOf(" ")==1|| mail.length < 6 || mail.indexOf(".")== -1) {
            alert ("Entrez un email valide");
            }else{
                mail.value.trim();
            }

   }
            function traiterNumero(){
    var num = document.getElementById("telephone").value;
    if(num.length != 10 || isNaN(num) )
        

    {
        alert ("Entrez un numéro valide svp");
    }
}

   function traiterAge(){
    var age = document.getElementById("age").value;
    if(age.length< 2 )
    {
        alert ("Votre age n'est pas valide!");
    }
}

 function checkEmail(email) {
             var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
             return re.test(email);
             
         }
         function validate() {
             var email = document.getElementById("email").value;
              var msge;
         
             if (checkEmail(email)) {
                msge = "<p style='color:green'>Votre email est valide.</p>"; 
                document.getElementById("msge").innerHTML= msge; 
             } else {
                  msge = "<p style='color:red'>Votre email n'est pas valide.</p>"; 
            document.getElementById("msge").innerHTML= msge;
             }
             return false;
         }
         
  function checkmdp() { 
            var msg; 
            var str = document.getElementById("mdp").value; 
            if (str.match( /[0-9]/g) && 
                    str.match( /[A-Z]/g) && 
                    str.match(/[a-z]/g) && 
                    str.match( /[^a-zA-Z\d]/g) &&
                    str.length >= 7) 
                msg = "<p style='color:green'>Mot de passe fort.</p>"; 
            else 
                msg = "<p style='color:red'>Mot de passe faible.<br>votre mot de passe doit contenir :<br>1- un chiffre<br>Une majuscule<br>Une miniscule<br>Plus de 7 caractères</p>"; 
            document.getElementById("msg").innerHTML= msg; 
        } 