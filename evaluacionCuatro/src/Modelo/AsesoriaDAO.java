package Modelo;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class AsesoriaDAO {
	
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	Conexion c= new Conexion();
	Connection con = null;
	
	public List listar() {
		
		
		
		List<Asesoria> lista =new ArrayList<>();
		String sql="select * from asesoria ORDER BY id ASC";
		
		try {
			 con=c.conectar();
			ps=con.prepareStatement(sql);
			 rs=ps.executeQuery();
			 while (rs.next()) {
				 
				 Asesoria p = new Asesoria();
				 p.setId(rs.getString(1));
				 p.setNom(rs.getString(2));
				 p.setFech(rs.getString(3));
				 p.setTase(rs.getString(4));				 
				 p.setAespe(rs.getString(5));
				 p.setAdeta(rs.getString(6));
				 lista.add(p);
			 }
			
		}catch ( Exception e){
		
	}
		return lista;
	}
	
	//crearemos el metodo para Agregar valores al form
	
	public int agregar( Asesoria p) {
		int r=0;
		String sql="insert into asesoria(id, nombre, fecha, tasesoria, aespecial, adetalle)values(?,?,?,?,?,?) ";
		try {
			// hacemos refrencia a la conexion
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			
			ps.setString(1, p.getId());
			ps.setString(2, p.getNom());
			ps.setString(3, p.getFech());
			ps.setString(4, p.getTase());			
			ps.setString(5, p.getAespe());
			ps.setString(6, p.getAdeta());
			
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
	
	public Asesoria listarId(String id) {
		
		String sql="select * from asesoria where id="+id;
		Asesoria p=new Asesoria();
		try {
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				p.setId(rs.getString(1));
				p.setNom(rs.getString(2));
				p.setFech(rs.getString(3));
				p.setTase(rs.getString(4));				
				p.setAespe(rs.getString(5));
				p.setAdeta(rs.getString(6));
			}
		}catch (Exception e) {
			
		}
		
		return p;
	}
	
	// nuevo metodod que permitira actualizar elementos de una tabla
	
	public int actualizar(Asesoria p) {
		
		int r=0;
		
		String sql="update asesoria set nombre=?, fecha=?, tasesoria=?,  aespecial=?, adetalle=? where id=?";
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.setString(1, p.getNom());
			ps.setString(2, p.getFech());
			ps.setString(3, p.getTase());			
			ps.setString(4, p.getAespe());
			ps.setString(5, p.getAdeta());			
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
		String sql="delete from asesoria where id="+id;
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.executeUpdate();

		}catch (Exception e) {			
		}

	}

}

