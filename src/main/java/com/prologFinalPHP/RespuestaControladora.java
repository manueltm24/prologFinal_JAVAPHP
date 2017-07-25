package com.prologFinalPHP;

import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;

import java.awt.event.ActionEvent;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/**
 * Created by MT on 7/25/2017.
 */
public class RespuestaControladora {


    @FXML
    public void initialize() throws Exception {
        if(InicioControladora.enfermedadesUsuario!=null){
            enfermedades.setItems(FXCollections.observableArrayList(InicioControladora.enfermedadesUsuario));
            List<String> descrip=new ArrayList<>();
            for(int i=0;i<InicioControladora.enfermedadesUsuario.size();i++){
                descrip.add(llamarDescripciones(InicioControladora.enfermedadesUsuario.get(i)));
            }
            descripciones.setItems(FXCollections.observableArrayList(descrip));
        }


    }

    @FXML
    void salir(javafx.event.ActionEvent event) {

        System.exit(0);
    }


    @FXML
    private ListView<String> enfermedades;

    @FXML
    private ListView<String> descripciones;


    public static String llamarDescripciones(String enfermedad) throws Exception{
        //String preguntasSintomas = new ArrayList<>();
        //for(int i=0; i<listadoEnfermedades.size();i++) {

        URL url = new URL("http://localhost/prologFinal?funcion=descripcion&enfermedad=" + enfermedad);
        String preguntasEnfermedades = "";
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"))) {
            for (String line; (line = reader.readLine()) != null; ) {
                preguntasEnfermedades += line;
            }
        }
        //System.out.println(preguntasEnfermedades);
        //preguntasSintomas = Arrays.asList(preguntasEnfermedades.split("\\s*,\\s*"));
        // }

        return  preguntasEnfermedades;

    }

}
