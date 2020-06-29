package Modelo;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class MejoraDAO {
	
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	Conexion c= new Conexion();
	Connection con = null;
	
	public List listar() {
		
		
		
		List<Mejora> lista =new ArrayList<>();
		String sql="select * from mejora ORDER BY id ASC";
		
		try {
			 con=c.conectar();
			ps=con.prepareStatement(sql);
			 rs=ps.executeQuery();
			 while (rs.next()) {
				 
				 Mejora p = new Mejora();
				 p.setId(rs.getString(1));
				 p.setNom(rs.getString(2));
				 p.setTase(rs.getString(3));
				 p.setFech(rs.getString(4));
				 p.setEspe(rs.getString(5));
				 p.setDeta(rs.getString(6));
				 lista.add(p);
			 }
			
		}catch ( Exception e){
		
	}
		return lista;
	}
	
	//crearemos el metodo para Agregar valores al form
	
	public int agregar( Mejora p) {
		int r=0;
		String sql="insert into mejora(id, nombre, tasesoria, fecha, capacitacion, detallec)values(?,?,?,?,?,?) ";
		try {
			// hacemos refrencia a la conexion
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			
			ps.setString(1, p.getId());
			ps.setString(2, p.getNom());
			ps.setString(3, p.getTase());
			ps.setString(4, p.getFech());
			ps.setString(5, p.getEspe());
			ps.setString(6, p.getDeta());
			
			ps.execute();
						
			r = ps.executeUpdate();//igualamos todo el codigo a la variable respuesta
			
			if(r==1) {				
				r=1;	
				
			}else {				
				r=0;	
				
			}
			
			
		}catch (Exception e) {
	}
	return r;
	}
	
	// nuevo metodod que permitira editar elementos de una tabla
	
	public Mejora listarId(String id) {
		
		String sql="select * from mejora where id="+id;
		Mejora p=new Mejora();
		try {
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				p.setId(rs.getString(1));
				p.setNom(rs.getString(2));
				p.setTase(rs.getString(3));
				p.setFech(rs.getString(4));
				p.setEspe(rs.getString(5));
				p.setDeta(rs.getString(6));
			}
		}catch (Exception e) {
			
		}
		
		return p;
	}
	
	// nuevo metodod que permitira actualizar elementos de una tabla
	
	public int actualizar(Mejora p) {
		
		int r=0;
		
		String sql="update mejora set nombre=?, tasesoria=?, fecha=?, capacitacion=?, detallec=? where id=?";
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.setString(1, p.getNom());
			ps.setString(2, p.getTase());
			ps.setString(3, p.getFech());
			ps.setString(4, p.getEspe());
			ps.setString(5, p.getDeta());			
			ps.setString(6, p.getId());
			r=ps.executeUpdate();
			
			if(r==1) {
				
				r=1;
			}else {
				
				r=0;
				
			}
			
		}catch(Exception e) {	

		}
		return r;		
		
	}
	
	// metodo para borrar registros
	
	public void eliminar(String id) {
		String sql="delete from mejora where id="+id;
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.executeUpdate();

		}catch (Exception e) {			
		}

	}

}

