package Clases;

public class usuario {
	
	private String nombre;
	private String tipo;
	
	
	public usuario(String a,String b){
		this.nombre=a;
		this.tipo=b;
	}
	
	public usuario(){
		
	}
	public String getnombre(){
		return this.nombre;
	}
	public String gettipo(){
		return this.tipo;
	}
}
