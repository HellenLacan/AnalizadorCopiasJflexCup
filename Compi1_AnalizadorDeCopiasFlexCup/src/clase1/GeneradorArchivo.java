/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase1;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;

/**
 *
 * @author Hellen
 */
public class GeneradorArchivo {

    public static void main(String[] args) throws FileNotFoundException {

        File folder = new File("C:\\Users\\Hellen\\Desktop\\Proyecto1");
        File[] listOfFiles = folder.listFiles();
        ArrayList<Archivo> arrayArchivo = new ArrayList<Archivo>();
        
        for (File file : listOfFiles) {
            Archivo miArchivo = new Archivo();
            if (file.isFile()) {
                String path = file.getAbsolutePath();
                System.out.println("*********" + path + "**********");
                System.out.println(file.getName());
                try {
                    String contenido="";
                    contenido = new String(Files.readAllBytes(Paths.get(path)));
                    miArchivo.setContenido(contenido);
                    miArchivo.setNombre(file.getName());
                    miArchivo.setPath(path);
                    arrayArchivo.add(miArchivo);
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }
}
