package Modelo;

public class Persona {
	
	
	String id;
	String nom;
	String fech;
	String ident;
	String desc;
	
	public Persona(String id, String nom, String fech, String ident, String desc) {
		
		this.id = id;
		this.nom = nom;
		this.fech = fech;
		this.ident = ident;
		this.desc = desc;
	}
	public Persona() {
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
	 * @return the ident
	 */
	public String getIdent() {
		return ident;
	}
	/**
	 * @param ident the ident to set
	 */
	public void setIdent(String ident) {
		this.ident = ident;
	}
	/**
	 * @return the desc
	 */
	public String getDesc() {
		return desc;
	}
	/**
	 * @param desc the desc to set
	 */
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	

}
