package Modelo;

public class MCliente {
	
	String id;
	String nom;
	String rut;
	String tel;
	String ema;
	public MCliente(String id, String nom, String rut, String tel, String ema) {
		
		this.id = id;
		this.nom = nom;
		this.rut = rut;
		this.tel = tel;
		this.ema = ema;
	}
	public MCliente() {
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
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}
	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}
	/**
	 * @return the ema
	 */
	public String getEma() {
		return ema;
	}
	/**
	 * @param ema the ema to set
	 */
	public void setEma(String ema) {
		this.ema = ema;
	}
	
	

}
