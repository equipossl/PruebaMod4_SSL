package Modelo;

public class Mejora {
	
	String Id;
	String Nom;
	String Tase;
	String Fech;
	String Espe;
	String Deta;
	
	
	public Mejora(String id, String nom, String tase, String fech, String espe, String deta) {
		
		Id = id;
		Nom = nom;
		Tase = tase;
		Fech = fech;
		Espe = espe;
		Deta = deta;
	}
	
	public Mejora() {
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
	 * @return the espe
	 */
	public String getEspe() {
		return Espe;
	}
	/**
	 * @param espe the espe to set
	 */
	public void setEspe(String espe) {
		Espe = espe;
	}
	/**
	 * @return the deta
	 */
	public String getDeta() {
		return Deta;
	}
	/**
	 * @param deta the deta to set
	 */
	public void setDeta(String deta) {
		Deta = deta;
	}
	
	

}
