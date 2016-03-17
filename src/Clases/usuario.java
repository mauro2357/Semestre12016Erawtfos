package Clases;

public class usuario {
	
	private String nombre;
	private String tipo;
	private String imagen;
	
	
	public usuario(String a,String b,String c){
		this.nombre=a;
		this.tipo=b;
		this.imagen=c;
	}
	
	public usuario(){
		
	}
	public String getnombre(){
		return this.nombre;
	}
	public String gettipo(){
		return this.tipo;
	}
	public String getimagen(){
		return this.imagen;
	}
}
