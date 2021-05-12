package controleur;

public class Patient {

	private int NumSecu;
	private String Nom, Prenom,  Tel, Mail , Password;
	
		
	public Patient (int NumSecu, String Nom, String Prenom, String Tel, String Mail, String Password) {
			super();
			this.NumSecu = NumSecu;
			this.Nom = Nom;
			this.Prenom = Prenom;
			
			this.Tel = Tel;
			this.Mail = Mail;
			this.Password = Password;
		}
		
	public Patient ( String Nom, String Prenom, String Tel, String Mail, String Password) {
			super();
			this.NumSecu = 0;
			this.Nom = Nom;
			this.Prenom = Prenom;
			
			this.Tel = Tel;
			this.Mail = Mail;
			this.Password = Password;
		}
		
	public Patient(){
		this.NumSecu = 0;
		this.Nom = "";
		this.Prenom = "";

		this.Tel = "";
		this.Mail ="";
		this.Password = "";
	}

	public int getNumSecu() {
		return NumSecu;
	}

	public void setNumSecu(int NumSecu) {
		this.NumSecu = NumSecu;
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



	public String getTel() {
		return Tel;
	}

	public void setTel(String Tel) {
		this.Tel = Tel;
	}

	public String getMail() {
		return Mail;
	}

	public void setMail(String Mail) {
		this.Mail = Mail;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String Password) {
		this.Password = Password;
	}
	 
}
