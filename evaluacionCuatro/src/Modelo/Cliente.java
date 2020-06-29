package Modelo;

public class Cliente {
	
	
	String id;
	String nom;
	String fech;
	String rut;
	String acci;
	
	public Cliente(String id, String nom, String fech, String rut, String acci) {
		
		this.id = id;
		this.nom = nom;
		this.fech = fech;
		this.rut = rut;
		this.acci = acci;
	}
	public Cliente() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}
	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
	/**
	 * @return the fech
	 */
	public String getFech() {
		return fech;
	}
	/**
	 * @param fech the fech to set
	 */
	public void setFech(String fech) {
		this.fech = fech;
	}
	/**
	 * @return the rut
	 */
	public String getRut() {
		return rut;
	}
	/**
	 * @param rut the rut to set
	 */
	public void setRut(String rut) {
		this.rut = rut;
	}
	/**
	 * @return the acci
	 */
	public String getAcci() {
		return acci;
	}
	/**
	 * @param acci the acci to set
	 */
	public void setAcci(String acci) {
		this.acci = acci;
	}
	
	

}
