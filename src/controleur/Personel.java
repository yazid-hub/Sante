package controleur;

public class Personel {
	protected int NumPers;
	protected String Nom, Prenom,email,Adress,Ville,Tel,DateEmbauche, password;
	public Personel(int numPers, String nom, String prenom, String email, String adress, String ville,
			String tel,
			String dateEmbauche, String password) {
		NumPers = numPers;
		Nom = nom;
		Prenom = prenom;
		this.email = email;
		Adress = adress;
		Ville = ville;
		Tel = tel;
		DateEmbauche = dateEmbauche;
		password = password;
	}
	public Personel(String nom, String prenom, String email, String adress, String ville, String tel,
			String dateEmbauche, String password) {
		Nom = nom;
		Prenom = prenom;
		this.email = email;
		Adress = adress;
		Ville = ville;
		Tel = tel;
		DateEmbauche = dateEmbauche;
		password = password;
	}
	
	
	
	
	
	public Personel(int numPers, String nom, String prenom) {
		super();
		NumPers = numPers;
		Nom = nom;
		Prenom = prenom;
	}
	public int getNumPers() {
		return NumPers;
	}
	public void setNumPers(int numPers) {
		NumPers = numPers;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdress() {
		return Adress;
	}
	public void setAdress(String adress) {
		Adress = adress;
	}
	public String getVille() {
		return Ville;
	}
	public void setVille(String ville) {
		Ville = ville;
	}
	public String getTel() {
		return Tel;
	}
	public void setTel(String tel) {
		Tel = tel;
	}
	public String getDateEmbauche() {
		return DateEmbauche;
	}
	public void setDateEmbauche(String dateEmbauche) {
		DateEmbauche = dateEmbauche;
	}
	public String getMdp() {
		return password;
	}
	public void setMdp(String password) {
		password = password;
	}
	
}
