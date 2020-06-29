package Modelo;

public class Asesoria {
	
	String Id;
	String Nom;
	String Fech;
	String Tase;
	String Aespe;
	String Adeta;
	
	
	public Asesoria(String id, String nom, String fech, String tase, String aespe, String adeta) {
		
		Id = id;
		Nom = nom;
		Fech = fech;
		Tase = tase;
		Aespe = aespe;
		Adeta = adeta;
	}
	public Asesoria() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return Id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		Id = id;
	}


	/**
	 * @return the nom
	 */
	public String getNom() {
		return Nom;
	}


	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		Nom = nom;
	}


	/**
	 * @return the fech
	 */
	public String getFech() {
		return Fech;
	}


	/**
	 * @param fech the fech to set
	 */
	public void setFech(String fech) {
		Fech = fech;
	}


	/**
	 * @return the tase
	 */
	public String getTase() {
		return Tase;
	}


	/**
	 * @param tase the tase to set
	 */
	public void setTase(String tase) {
		Tase = tase;
	}


	/**
	 * @return the aespe
	 */
	public String getAespe() {
		return Aespe;
	}


	/**
	 * @param aespe the aespe to set
	 */
	public void setAespe(String aespe) {
		Aespe = aespe;
	}


	/**
	 * @return the adeta
	 */
	public String getAdeta() {
		return Adeta;
	}


	/**
	 * @param adeta the adeta to set
	 */
	public void setAdeta(String adeta) {
		Adeta = adeta;
	}

	
	
	
}
