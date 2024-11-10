package com;

public class Producto {
	String nombre;
	String descripcion;
	String boton;
	
	public Producto(String nombre, String descripcion, String boton) {
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.boton = boton;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getBoton() {
		return boton;
	}

	public void setBoton(String boton) {
		this.boton = boton;
	}
}
