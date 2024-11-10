package com;

public class Opiniones {
	String nusuario;
	final String puntuacion = "Puntuación";
	String puntos;
	final String prod_comprado = "Producto Comprado";
	String nproducto;
	String opinion;
	
	public Opiniones(String nusuario, String puntos, 
			String nproducto, String opinion) {
		this.nusuario = nusuario;
		this.puntos = puntos;
		this.nproducto = nproducto;
		this.opinion = opinion;
	}

	public String getNusuario() {
		return nusuario;
	}


	public String getPuntos() {
		return puntos;
	}



	public String getNproducto() {
		return nproducto;
	}



	public String getOpinion() {
		return opinion;
	}

	
	
}
