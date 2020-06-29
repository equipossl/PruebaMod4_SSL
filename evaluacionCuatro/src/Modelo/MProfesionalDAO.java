package Modelo;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class MProfesionalDAO {
	
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	Conexion c= new Conexion();
	Connection con = null;
	
	public List listar() {
		
		
		
		List<MProfesional> lista =new ArrayList<>();
		String sql="select * from mprofesional ORDER BY id ASC";
		
		try {
			 con=c.conectar();
			ps=con.prepareStatement(sql);
			 rs=ps.executeQuery();
			 while (rs.next()) {
				 
				 MProfesional p = new MProfesional();
				 p.setId(rs.getString(1));
				 p.setNom(rs.getString(2));
				 p.setRut(rs.getString(3));
				 p.setTel(rs.getString(4));
				 p.setEma(rs.getString(5));
				 p.setAct(rs.getString(6));
			
				 lista.add(p);
			 }
			
		}catch ( Exception e){
		
	}
		return lista;
	}
	
	//crearemos el metodo para Agregar valores al form
	
	public int agregar( MProfesional p) {
		int r=0;
		String sql="insert into mprofesional(id, nombre, rut, telefono, email, actividad)values(?,?,?,?,?,?) ";
		try {
			// hacemos refrencia a la conexion
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			
			ps.setString(1, p.getId());
			ps.setString(2, p.getNom());
			ps.setString(3, p.getRut());
			ps.setString(4, p.getTel());
			ps.setString(5, p.getEma());
			ps.setString(6, p.getAct());
		
			
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
	
	public MProfesional listarId(String id) {
		
		String sql="select * from mprofesional where id="+id;
		MProfesional p=new MProfesional();
		try {
			
			con = c.conectar();
			ps= con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				p.setId(rs.getString(1));
				p.setNom(rs.getString(2));
				p.setRut(rs.getString(3));
				p.setTel(rs.getString(4));
				p.setEma(rs.getString(5));
				p.setAct(rs.getString(6));
				
			}
		}catch (Exception e) {
			
		}
		
		return p;
	}
	
	// nuevo metodod que permitira actualizar elementos de una tabla
	
	public int actualizar(MProfesional p) {
		
		int r=0;
		
		String sql="update mprofesional set nombre=?, rut=?, telefono=?,  email=?, actividad=? where id=?";
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.setString(1, p.getNom());
			ps.setString(2, p.getRut());
			ps.setString(3, p.getTel());
			ps.setString(4, p.getEma());
			ps.setString(5, p.getAct());	
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
		String sql="delete from mprofesional where id="+id;
		try {
			
			con=c.conectar();
			ps=con.prepareStatement(sql);
			ps.executeUpdate();

		}catch (Exception e) {			
		}

	}

}

