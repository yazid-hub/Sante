package controleur;

public class Service {
	private int NumService;
	private String Libelle;
	
	public Service(int numService, String libelle) {
		super();
		NumService = numService;
		Libelle = libelle;
	}

	
	public Service(String libelle) {
		super();
		Libelle = libelle;
	}


	public int getNumService() {
		return NumService;
	}

	public void setNumService(int numService) {
		NumService = numService;
	}

	public String getLibelle() {
		return Libelle;
	}

	public void setLibelle(String libelle) {
		Libelle = libelle;
	}
	
}
