package modele;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controleur.*;

public class Modele {
		
 private static BDD uneBDD = new BDD("localhost","gestplanning","root","");
		
	public static ArrayList<Service> selectAllServices(){


		 ArrayList<Service> lesServices = new ArrayList<Service>();
				
				
				 String requete ="select * from service ;";

				 try {
				
							 uneBDD.seConnecter();
							
							 Statement unStat = uneBDD.getMaConnexion().createStatement();
							
							 ResultSet desResultats = unStat.executeQuery(requete);
							
							
				 while (desResultats.next()) {
				
							 Service unService = new Service (
							
							 desResultats.getInt("NumService"),
							
							 desResultats.getString("Libelle")
							
				 );
				
				 lesServices.add(unService);
				
				 }
				
				 unStat.close();
				
				 uneBDD.seDeConnecter();
				
				 }
				
				 catch(SQLException exp) {
				
					 	System.out.println("Erreur d'execution de la requete : "+requete);
				
				 }
				
				 return lesServices;

 }

public static ArrayList<Medecin> selectAllMedecin(int numservice){


				 ArrayList<Medecin> lesMedecins = new ArrayList<Medecin>();
				
				
				 String requete ="select * from medecin, personel where Personel.NumPers=Medecin.NumPers and NumService="+numservice+";";
				
		 try {
				
						 uneBDD.seConnecter();
						
						 Statement unStat = uneBDD.getMaConnexion().createStatement();
						
						 ResultSet desResultats = unStat.executeQuery(requete);
						
						
		 while (desResultats.next()) {
						
				Medecin unMedecin = new Medecin (
						
						desResultats.getInt("NumPers"),
						desResultats.getInt("NumService"),
						desResultats.getString("Nom"),
						desResultats.getString("Prenom")
						
						
				 );
				
						 lesMedecins.add(unMedecin);
				
				 	}
				
					 unStat.close();
					
					 uneBDD.seDeConnecter();
					
				 	}
				
		catch(SQLException exp) {
				
					 System.out.println("Erreur d'execution de la requete : "+requete);
				
				 	}
				
				 		return lesMedecins;
				
					}

public static ArrayList<Creneau> selectAllCreneau(int numpers){
			
			
			 ArrayList<Creneau> lesCreneaux = new ArrayList<Creneau>();
			
			
			 String requete ="select * from creneau, medecin_creneau where creneau.id = medecin_creneau.id and NumPers="+numpers+";";
			
						 try {
						
								 uneBDD.seConnecter();
								
								 Statement unStat = uneBDD.getMaConnexion().createStatement();
								
								 ResultSet desResultats = unStat.executeQuery(requete);
								
						
						 while (desResultats.next()) {
						
							 Creneau UnCreneau = new Creneau (
								
								desResultats.getInt("id"),
								desResultats.getString("jour"),
								desResultats.getString("Heure"),
								desResultats.getString("heurefin")
						 );
						
								 lesCreneaux.add(UnCreneau);
						
						 }
						
						 unStat.close();
						
						 uneBDD.seDeConnecter();
						
						 }catch(SQLException exp) {
						
							 System.out.println("Erreur d'execution de la requete : "+requete);
						
						 }
						
						 return lesCreneaux;
					
					}

public static void insertPatient(Patient unPatient) {
	
				String requete ="insert into Patient values(null,'"+unPatient.getNom()
				+ "','"+unPatient.getPrenom()+"','"+unPatient.getTel()+"','"+unPatient.getMail()+"' ,'"+unPatient.getPassword()+ "');";
				
						try {
						uneBDD.seConnecter();
						Statement unStat = uneBDD.getMaConnexion().createStatement();
						unStat.execute(requete);
						unStat.close();
						uneBDD.seDeConnecter();
						}catch(SQLException exp) {
						System.out.println("Erreur d'excution de la requete :"+requete);
						}
				}
	
public static void insertPersonel(Personel unPersonel) {
	
	String requete ="insert into Personel values(null,'"+unPersonel.getNom()
	+ "','"+unPersonel.getPrenom()+"','"+unPersonel.getEmail()+"','"+unPersonel.getAdress()
	+"' ,'"+unPersonel.getVille()+"','"+unPersonel.getTel()
	+"','"+unPersonel.getDateEmbauche()+"','"+unPersonel.getMdp()+"');";
	
			try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeConnecter();
			}catch(SQLException exp) {
			System.out.println("Erreur d'excution de la requete :"+requete);
			}
	}

public static Patient selectWherePatient(String Mail, String Password){
				
				
				Patient unPatient = null;
				
				 String requete ="select * from patient where mail ='" + Mail +"' and password ='" + Password + "' ;";
				
						 try {
						
								 uneBDD.seConnecter();
								
								 Statement unStat = uneBDD.getMaConnexion().createStatement();
								
								 ResultSet unResultat = unStat.executeQuery(requete);
								
								
								 if (unResultat.next()) {
								
								 unPatient = new Patient (
								
								 unResultat.getInt("NumSecu"),
								
								 unResultat.getString("Nom"),
								
								 unResultat.getString("Prenom"),
								
								 unResultat.getString("Tel"),
								unResultat.getString("Mail"),
								
								 unResultat.getString("Password")
								
						 );
				}
				
				 unStat.close();
				
				 uneBDD.seDeConnecter();
				
				 }
				
					  catch(SQLException exp) {
						
						  	System.out.println("Erreur d'execution de la requete : "+requete);
						
						 }
				
			return unPatient;
				
}
public static Personel selectWherePersonel(String Mail, String password){
	
	
	Personel unPersonel = null;
	
	 String requete ="select * from Personel where mail ='" + Mail +"' and password ='" + password + "' ;";
	
			 try {
			
					 uneBDD.seConnecter();
					
					 Statement unStat = uneBDD.getMaConnexion().createStatement();
					
					 ResultSet unResultat = unStat.executeQuery(requete);
					
					
					 if (unResultat.next()) {
					
						 unPersonel = new Personel (
					
					 unResultat.getInt("NumPers"),
					
					 unResultat.getString("Nom"),
					
					 unResultat.getString("Prenom"),
					 unResultat.getString("Mail"),
					 unResultat.getString("Adress"),
					 unResultat.getString("Ville"),
					 unResultat.getString("Tel"),
					 unResultat.getString("DateEmbauche"),
					 unResultat.getString("password")
					
			 );
	}
	
	 unStat.close();
	
	 uneBDD.seDeConnecter();
	
	 }
	
		  catch(SQLException exp) {
			
			  	System.out.println("Erreur d'execution de la requete : "+requete);
			
			 }
	
return unPersonel;
	
}



public static ArrayList<Medecin_creneau> selectAllMC(int id,int numpers){


			 ArrayList<Medecin_creneau> lecreneau = new ArrayList<Medecin_creneau>();
			
			
			 String requete ="select * from creneau, medecin_creneau,personel where medecin_creneau.NumPers = personel.NumPers and creneau.id = medecin_creneau.id and medecin_creneau.NumPers="+numpers+" and medecin_creneau.id="+id+";";
			
						try {
						
								 uneBDD.seConnecter();
								
								 Statement unStat = uneBDD.getMaConnexion().createStatement();
								
								 ResultSet desResultats = unStat.executeQuery(requete);
								
								
					while (desResultats.next()) {
								
						 Medecin_creneau UnMC = new Medecin_creneau (
								
								desResultats.getInt("id"),
								desResultats.getInt("NumPers"),
								desResultats.getString("Jour"),
								desResultats.getString("Heure"),
								desResultats.getString("Nom"),
								desResultats.getString("Prenom")
								
								
								 );
								
								 lecreneau.add(UnMC);
								
								 }
								
								 unStat.close();
								
								 uneBDD.seDeConnecter();
								
								 }
								
						 catch(SQLException exp) {
						
						 System.out.println("Erreur d'execution de la requete : "+requete);
						
						 }
			
			 return lecreneau;
			
			}

public static void insertRDV(Rdv unRdv) {
			String requete ="insert into Rdv values(null,'"+unRdv.getNumSecu()
			+ "','"+unRdv.getNumPers()+"','"+unRdv.getId()+"');";
					try {
							uneBDD.seConnecter();
							Statement unStat = uneBDD.getMaConnexion().createStatement();
							unStat.execute(requete);
							unStat.close();
							uneBDD.seDeConnecter();
					}catch(SQLException exp) {
							System.out.println("Erreur d'excution de la requete :"+requete);
					}
			}
public static ArrayList<Rdv> selectAllRdvs(int numsecu){


				 ArrayList<Rdv> lesRdvs = new ArrayList<Rdv>();
				
				
				 String requete ="select * from rdv, creneau, personel where creneau.id = rdv.id and personel.NumPers= rdv.NumPers and rdv.NumSecu="+numsecu+";";
				
							 try {
							
									 uneBDD.seConnecter();
									
									 Statement unStat = uneBDD.getMaConnexion().createStatement();
									
									 ResultSet desResultats = unStat.executeQuery(requete);
									
									
							while (desResultats.next()) {
									
									Rdv unRdv = new Rdv (
									desResultats.getInt("idRdv"),
									desResultats.getInt("NumSecu"),
									desResultats.getInt("NumPers"),
									desResultats.getInt("Id"),
									desResultats.getString("Jour"),
									desResultats.getString("Heure"),
									desResultats.getString("Nom"),
									desResultats.getString("Prenom")
									);
									
									 lesRdvs.add(unRdv);
									
									 }
									
									 unStat.close();
									
									 uneBDD.seDeConnecter();
									
									 }
									
									 catch(SQLException exp) {
									
									 System.out.println("Erreur d'execution de la requete : "+requete);
									
									 }
				
				 return lesRdvs;
				
				}

public static void deleteRdv(int idRdv) {
		String requete ="delete from Rdv where idrdv="+idRdv+";" ;
				try {
									uneBDD.seConnecter();
									Statement unStat = uneBDD.getMaConnexion().createStatement();
									unStat.execute(requete);
									unStat.close();
									uneBDD.seDeConnecter();
				}catch(SQLException exp) {
									System.out.println("Erreur d'excution de la requete :"+requete);
									}
		}
public static void deleteService(int Numservice) {
	String requete ="delete from service where NumService="+Numservice+";" ;
			try {
								uneBDD.seConnecter();
								Statement unStat = uneBDD.getMaConnexion().createStatement();
								unStat.execute(requete);
								unStat.close();
								uneBDD.seDeConnecter();
			}catch(SQLException exp) {
								System.out.println("Erreur d'excution de la requete :"+requete);
								}
	}
public static void insertService(Service unService) {
	
	String requete ="insert into Service values(null,'"+unService.getLibelle()+ "');";
	
			try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeConnecter();
			}catch(SQLException exp) {
			System.out.println("Erreur d'excution de la requete :"+requete);
			}
	}
public static ArrayList<Medecin> selectAllMedecins(){


	 ArrayList<Medecin> lesMedecins = new ArrayList<Medecin>();
	
	
	 String requete ="select * from  personel, medecin ,service where Personel.NumPers=Medecin.NumPers and medecin.NumService=service.NumService ;";
	
try {
	
			 uneBDD.seConnecter();
			
			 Statement unStat = uneBDD.getMaConnexion().createStatement();
			
			 ResultSet desResultats = unStat.executeQuery(requete);
			
			
while (desResultats.next()) {
			
	Medecin unMedecin = new Medecin (
			
			desResultats.getInt("NumPers"),
			desResultats.getInt("NumService"),
			desResultats.getString("Nom"),
			desResultats.getString("Prenom")
	 );
	
			 lesMedecins.add(unMedecin);
	
	 	}
	
		 unStat.close();
		
		 uneBDD.seDeConnecter();
		
	 	}
	
catch(SQLException exp) {
	
		 System.out.println("Erreur d'execution de la requete : "+requete);
	
	 	}
	
	 		return lesMedecins;
	
		}

}