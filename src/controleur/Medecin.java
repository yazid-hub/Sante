package controleur;

public class Medecin extends Personel{
	int NumService;
	public Medecin(int numPers, int numService,String nom, String prenom, 
			String email, String adress, String ville,
			String tel,
			String dateEmbauche, String mdp) {
		super(numPers, nom, prenom, email,adress,ville,tel,dateEmbauche, mdp);
		NumService = numService;
	
	}
	public int getNumService() {
		return NumService;
	}
	public void setNumService(int numService) {
		NumService = numService;
	}
	public Medecin(int numPers, String nom, String prenom, String email, String adress, String ville, String tel,
			String dateEmbauche, String mdp) {
		super(numPers, nom, prenom, email, adress, ville, tel, dateEmbauche, mdp);
		
	}
	public Medecin(int numPers, int numService,String nom, String prenom) {
		super(numPers, nom, prenom);
		NumService = numService;
	}
	
}
