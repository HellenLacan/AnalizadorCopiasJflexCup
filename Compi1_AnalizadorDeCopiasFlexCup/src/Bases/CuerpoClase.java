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
public class CuerpoClase {
        private ArrayList<Funcion> arrayFunciones = new ArrayList<Funcion>(); 
        private ArrayList<Metodo> arrayMetodos = new ArrayList<Metodo>();
        private ArrayList<Variable> arrayVariables = new ArrayList<Variable>();
        private ArrayList<Object> arrayCuerpo = new ArrayList<Object>();

    public CuerpoClase(ArrayList<Funcion> arrayFunciones, ArrayList<Metodo> arrayMetodos, ArrayList<Variable>arrayVariables){
        this.arrayFunciones=arrayFunciones;
        this.arrayMetodos=arrayMetodos;
        this.arrayVariables=arrayVariables;
    }   
    
    public CuerpoClase(ArrayList<Object> arrayCuerpo){
        this.arrayCuerpo= arrayCuerpo;
    }   
    
    public ArrayList<Funcion> getArrayFunciones() {
        return arrayFunciones;
    }

    public void setArrayFunciones(ArrayList<Funcion> arrayFunciones) {
        this.arrayFunciones = arrayFunciones;
    }

    public ArrayList<Metodo> getArrayMetodos() {
        return arrayMetodos;
    }

    public void setArrayMetodos(ArrayList<Metodo> arrayMetodos) {
        this.arrayMetodos = arrayMetodos;
    }

    public ArrayList<Variable> getArrayVariables() {
        return arrayVariables;
    }

    public void setArrayVariables(ArrayList<Variable> arrayVariables) {
        this.arrayVariables = arrayVariables;
    }    
}
