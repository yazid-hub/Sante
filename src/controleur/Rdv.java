package controleur;

public class Rdv {
	private int idRdv, NumSecu,NumPers,Id;
	private String Prenom,Nom,  Heure, Jour;

	public Rdv (int idRdv,int NumSecu,int NumPers,int Id, String Nom, String Prenom, String Heure, String Jour )
	{
		this.idRdv = idRdv;
		this.NumSecu=NumSecu;
		this.NumPers = NumPers;
		this.Id =Id;
		this.Jour = Jour;
		this.Heure = Heure;
		this.Nom = Nom;
		this.Prenom = Prenom;
		
	}
	public Rdv (int NumSecu,int NumPers,int Id )
	{
	
		this.NumSecu=NumSecu;
		this.NumPers = NumPers;
		this.Id =Id;
		
	}

	public Rdv (int NumSecu,int NumPers,int Id, String Nom, String Prenom, String Heure, String Jour )
	{
	
		this.NumSecu=NumSecu;
		this.NumPers = NumPers;
		this.Id =Id;
		this.Jour = Jour;
		this.Heure = Heure;
		this.Nom = Nom;
		this.Prenom = Prenom;
		
	}
	
	public int getIdRdv() {
		return idRdv;
	}

	public void setIdRdv(int idRdv) {
		this.idRdv = idRdv;
	}

	public int getNumSecu() {
		return NumSecu;
	}

	public void setNumSecu(int NumSecu) {
		this.NumSecu = NumSecu;
	}

	public int getNumPers() {
		return NumPers;
	}

	public void setNumPers(int NumPers) {
		this.NumPers = NumPers;
	}

	public int getId() {
		return Id;
	}

	public void setId(int Id) {
		this.Id = Id;
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
