package controleur;
	
	 public class Creneau
	    {


				private int id;
				private String jour;
				private String Heure;
				private String HeureFin;


				public Creneau(int id, String jour, String Heure,String HeureFin)
				{
					this.id = id;
					this.jour = jour;
					this.Heure = Heure;
				this.HeureFin = HeureFin;
				}
			public Creneau( String date, String Heure, String HeureFin)
			{
				this.id = 0;
				this.jour = jour;
				this.Heure = Heure;
				this.HeureFin = HeureFin;
			}
			public int getId() {
				return id;
			}
			public void setId(int id) {
				this.id = id;
			}
			public String getDate() {
				return jour;
			}
			public void setDate(String jour) {
				this.jour = jour;
			}
			public String getHeure() {
				return Heure;
			}
			public void setHeure(String heure) {
				Heure = heure;
			}
			public String getHeureFin() {
				return HeureFin;
			}
			public void setHeureFin(String heureFin) {
				HeureFin = heureFin;
			}
	


}
