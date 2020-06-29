package Modelo;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class ClienteDAO {
	
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	Conexion c= new Conexion();
	Connection con = null;
	
	public List listar() {
		
		
		
		List<Cliente> lista =new ArrayList<>();
		String sql="select * from cliente ORDER BY id ASC";
		
		try {
			 con=c.conectar();
			ps=con.prepareStatement(sql);
			 rs=ps.executeQuery();
			 while (rs.next()) {
				 
				 Cliente p = new Cliente();
				 p.setId(rs.getString(1));
				 p.setNom(rs.getString(2));
				 p.setFech(rs.getString(3));
				 p.setRut(rs.getString(4));
				 p.setAcci(rs.getString(5));
				 lista.add(p);
			 }
			
		}catch ( Exception e){
		
	}
		return lista;
	}
	
	//crearemos el metodo para Agregar valores al form
	
	public int agregar( Cliente p) {
		int r=0;
		String sql="insert into cliente(id, nombre, fecha, rut, accidente)values(?,?,?,?,?) ";
		try {
			// hacemos refrencia a la conexion
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			
			ps.setString(1, p.getId());
			ps.setString(2, p.getNom());
			ps.setString(3, p.getFech());
			ps.setString(4, p.getRut());
			ps.setString(5, p.getAcci());
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
	
	public Cliente listarId(String id) {
		
		String sql="select * from cliente where id="+id;
		Cliente p=new Cliente();
		try {
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				p.setId(rs.getString(1));
				p.setNom(rs.getString(2));
				p.setFech(rs.getString(3));
				p.setRut(rs.getString(4));
				p.setAcci(rs.getString(5));
			}
		}catch (Exception e) {
			
		}
		
		return p;
	}
	
	// nuevo metodod que permitira actualizar elementos de una tabla
	
	public int actualizar(Cliente p) {
		
		int r=0;
		
		String sql="update cliente set nombre=?, fecha=?, rut=?, accidente=? where id=?";
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.setString(1, p.getNom());
			ps.setString(2, p.getFech());
			ps.setString(3 ,p.getRut());
			ps.setString(4, p.getAcci());
			ps.setString(5, p.getId());
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
		String sql="delete from cliente where id="+id;
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.executeUpdate();

		}catch (Exception e) {			
		}

	}

}

