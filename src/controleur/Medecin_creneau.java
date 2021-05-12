package controleur;

public class Medecin_creneau {
	private int id, NumPers;
	private String Jour ,Heure,Nom, Prenom;
	

	public Medecin_creneau(int id, int NumPers, String Jour,String Heure,String Nom, String Prenom) {
		this.id = id;
		this.NumPers = NumPers;
		this.Jour = Jour;
		this.Heure = Heure;
		this.Nom = Nom;
		this.Prenom = Prenom;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumPers() {
		return NumPers;
	}

	public void setNumPers(int NumPers) {
		this.NumPers = NumPers;
	}
	
	public String getJour() {
		return Jour;
	}

	public void setJour(String Jour) {
		this.Jour = Jour;
	}

	public String getHeure() {
		return Heure;
	}

	public void setHeure(String Heure) {
		this.Heure = Heure;
	}
	
	
	public String getNom() {
		return Nom;
	}

	public void setNom(String Nom) {
		this.Nom = Nom;
	}
	
	public String getPrenom() {
		return Prenom;
	}

	public void setPrenom(String Prenom) {
		this.Prenom = Prenom;
	}

	
	
	
	
	

}
