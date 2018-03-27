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
public class Funcion {
    private String nombre="";
    private String visibilidad="";
    private String tipo_dato="";
    private int no_lineas=0;
    private ArrayList<Parametro> arrayParametros = new ArrayList<Parametro>();
    
    public Funcion(String tipo, String nombre, ArrayList<Parametro> arrayParametros ){
        this.tipo_dato=tipo;
        this.nombre=nombre;
        this.arrayParametros=arrayParametros;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getVisibilidad() {
        return visibilidad;
    }

    public void setVisibilidad(String visibilidad) {
        this.visibilidad = visibilidad;
    }

    public String getTipo_retorno() {
        return tipo_dato;
    }

    public void setTipo_retorno(String tipo_retorno) {
        this.tipo_dato = tipo_retorno;
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


}
