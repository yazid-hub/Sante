package controleur;

import java.util.ArrayList;

import modele.Modele;

public class Controleur {
	public static ArrayList <Service> selectAllServices ()

    {

        return Modele.selectAllServices();

    }
	
	public static ArrayList <Medecin> selectAllMedecin(int numservice)

    {

        return Modele.selectAllMedecin(numservice);

    }
	
	public static ArrayList<Creneau> selectAllCreneau(int numpers)
	{
		return Modele.selectAllCreneau(numpers);
	}
	
	public static void insertPatient(Patient unPatient) {
		// ici ont peut realiser des controles sur les données de ce client avant son insertion en bdd
		
		Modele.insertPatient(unPatient);
		
	}
	
	public static Patient selectWherePatient (String Mail, String Password) {
		return Modele.selectWherePatient(Mail,Password);
	}
	
	public static ArrayList<Medecin_creneau> selectAllMC(int id, int numpers){
	
	return Modele.selectAllMC(id,numpers);
	}
	
	public static void insertRDV(Rdv unRdv) {
		// ici ont peut realiser des controles sur les données de ce client avant son insertion en bdd
		
		Modele.insertRDV(unRdv);
		
	}
	public static ArrayList<Rdv> selectAllRdvs(int numsecu){
		
	return Modele.selectAllRdvs(numsecu);
	}
	
	public static void deleteRdv(int idRdv) {
		Modele.deleteRdv(idRdv);
		
}
	public static void insertPersonel(Personel unPersonel) {
		Modele.insertPersonel(unPersonel);
	}
	public static Personel selectWherePersonel(String Mail, String mdp){
		return Modele.selectWherePersonel(Mail, mdp);
	}
	
	public static void deleteService(int Numservice) {
		Modele.deleteService(Numservice);
	}
	public static void insertService(Service unService) {
		Modele.insertService(unService);
	}
	
	public static ArrayList<Medecin> selectAllMedecins(){
		return Modele.selectAllMedecins();
		
	}
	
}
