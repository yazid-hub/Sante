package modele;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BDD {

    // Cette class permet la connexion à la  base de donnée via pilote JDBC
    
    private String server, bdd, user, mdp;
    private Connection maConnexion;
    
    public BDD(String server, String bdd, String user, String mdp) {
        super();
        this.server = server;
        this.bdd = bdd;
        this.user = user;
        this.mdp = mdp;
    }

 

    public void chargerPilote () {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException exp) {
            System.out.println("Absence de pilote jdbc");
        }
    }
    
    public void seConnecter () {
        this.chargerPilote();
        String url= "jdbc:mysql://localhost/gestplanning";
        
        try {
            this.maConnexion = DriverManager.getConnection(url,this.user,this.mdp);
        }
        
        catch (SQLException exp){
            System.out.println("Erreur de Connexion :"+url);
            
        }
    }
    
    public void seDeConnecter () {
        try {
            if(this.maConnexion!=null) {
                this.maConnexion.close();
            }
        }
        catch(SQLException exp) {
            System.out.println("Erreur de deconnexion :");
            
        }
    }
    
    public Connection getMaConnexion() {
        return this.maConnexion;
    }

}
