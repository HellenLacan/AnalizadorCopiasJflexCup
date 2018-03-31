/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase1;

import Bases.*;
import BasesRepetidas.*;
import java.util.ArrayList;

/**
 *
 * @author Hellen
 */
public class Resultante {

    private String score = "";
    private ArrayList<claseRepetida> Clases = new ArrayList<claseRepetida>();
    private ArrayList<variableRepetida> Variables = new ArrayList<variableRepetida>(); 
    private ArrayList<funcionRepetida> Metodos = new ArrayList<funcionRepetida>();

    public Resultante(String score, ArrayList<claseRepetida> misClases,ArrayList<funcionRepetida> misFunciones, ArrayList<variableRepetida> misVars) {
        this.score=score;
        this.Clases=misClases;
        this.Metodos=misFunciones;
        this.Variables=misVars;
    }

    public String getScore() {
        return score;
    }

    public ArrayList<claseRepetida> getClases() {
        return Clases;
    }

    public void setClases(ArrayList<claseRepetida> Clases) {
        this.Clases = Clases;
    }

    public ArrayList<variableRepetida> getVariables() {
        return Variables;
    }

    public void setVariables(ArrayList<variableRepetida> Variables) {
        this.Variables = Variables;
    }

    public ArrayList<funcionRepetida> getMetodos() {
        return Metodos;
    }

    public void setMetodos(ArrayList<funcionRepetida> Metodos) {
        this.Metodos = Metodos;
    }
}
