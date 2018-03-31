/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bases;

import java.util.ArrayList;

/**
 *
 * @author Hellen
 */
public class Metodo {
    
    private String visibilidad="";
    private String tipo_dato="";
    private String nombre="";    
    private int no_lineas=0;
    private ArrayList<Parametro> arrayParametros = new ArrayList<Parametro>();
    private ArrayList<Variable> arrayVariables = new ArrayList<Variable>();

    public Metodo(String tipo_dato, String nombre, ArrayList<Parametro> arrayParametros,Object vars){
        this.tipo_dato=tipo_dato;
        this.nombre=nombre;
        this.arrayParametros=arrayParametros;
    }
    
    public Metodo(String tipo_dato, String nombre, ArrayList<Parametro> arrayParametros,ArrayList<Variable> ArrayVariables){
        this.tipo_dato=tipo_dato;
        this.nombre=nombre;
        this.arrayParametros=arrayParametros;
        this.arrayVariables=ArrayVariables;
    }
    
    public String getVisibilidad() {
        return visibilidad;
    }

    public void setVisibilidad(String visibilidad) {
        this.visibilidad = visibilidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

  

    public int getNo_lineas() {
        return no_lineas;
    }

    public void setNo_lineas(int no_lineas) {
        this.no_lineas = no_lineas;
    }

    public String getTipo_dato() {
        return tipo_dato;
    }

    public void setTipo_dato(String tipo_dato) {
        this.tipo_dato = tipo_dato;
    }

    public ArrayList<Parametro> getArrayParametros() {
        return arrayParametros;
    }

    public void setArrayParametros(ArrayList<Parametro> arrayParametros) {
        this.arrayParametros = arrayParametros;
    }

    public ArrayList<Variable> getArrayVariables() {
        return arrayVariables;
    }

    public void setArrayVariables(ArrayList<Variable> arrayVariables) {
        this.arrayVariables = arrayVariables;
    }

    
}
