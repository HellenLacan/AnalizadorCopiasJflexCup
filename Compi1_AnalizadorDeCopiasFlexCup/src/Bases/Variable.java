/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bases;

/**
 *
 * @author Hellen
 */
public class Variable {

    private String tipo="";
    private String nombre="";
    private String expresion="";
    private String visibilidad="";

    public Variable() {
    }

    public Variable(String visibilidad,String tipo, String nombre, String expresion) {
        this.visibilidad=visibilidad;
        this.tipo=tipo;
        this.nombre=nombre;
        this.expresion=expresion;
    }

    public Variable(String tipo, String nombre, String expresion) {
        this.tipo=tipo;
        this.nombre=nombre;
        this.expresion=expresion;
    }
    
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getExpresion() {
        return expresion;
    }

    public void setExpresion(String expresion) {
        this.expresion = expresion;
    }

    public String getVisibilidad() {
        return visibilidad;
    }

    public void setVisibilidad(String visibilidad) {
        this.visibilidad = visibilidad;
    }
}
