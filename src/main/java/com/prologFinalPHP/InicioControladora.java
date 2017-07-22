package com.prologFinalPHP;
/**
 * Created by MT on 7/21/2017.
 */

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.TextArea;
import javafx.stage.Stage;


import java.io.*;
import java.net.URL;
import java.util.*;

public class InicioControladora  {



    public static int contadorPreguntas = 0;
    public static int contadorEnfermedades = 0;
    public static List<String> preguntasSintomas=new ArrayList<>();
    public static List<String> listadoEnfermedades=new ArrayList<>();
    public static List<String> enfermedadesUsuario=new ArrayList<>();


    @FXML
    public void initialize() throws Exception {
        contadorPreguntas=0;
        contadorEnfermedades=0;
        llamarSintomas(listadoEnfermedades.get(0));
        preguntasText.setText(preguntasSintomas.get(0));
    }


    @FXML
    private TextArea preguntasText;

    @FXML
    void buttonNo(ActionEvent event) throws Exception {
        contadorEnfermedades++;

        if(listadoEnfermedades.size()==contadorEnfermedades){
            String enfermedades = String.join(",", enfermedadesUsuario);

            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Information Dialog");
            alert.setHeaderText(null);
            System.out.println("Usted tiene las siguientes enfermedades: " + enfermedades);
            alert.setContentText("Usted tiene las siguientes enfermedades: " + enfermedades);

            alert.showAndWait();
            return;

        }


        contadorPreguntas=0;
        llamarSintomas(listadoEnfermedades.get(contadorEnfermedades));
        preguntasText.setText(preguntasSintomas.get(contadorPreguntas));


    }

    @FXML
    void buttonSi(ActionEvent event) throws Exception {
        contadorPreguntas++;
        if(preguntasSintomas.size()==contadorPreguntas){
            enfermedadesUsuario.add(listadoEnfermedades.get(contadorEnfermedades));
            contadorEnfermedades++;

            if(listadoEnfermedades.size()==contadorEnfermedades){
                String enfermedades = String.join(",", enfermedadesUsuario);

                System.out.println("Usted tiene las siguientes enfermedades: " + enfermedades);
                return;

            }

            contadorPreguntas=0;
            llamarSintomas(listadoEnfermedades.get(contadorEnfermedades));
            preguntasText.setText(preguntasSintomas.get(contadorPreguntas));
        }
        else{
            preguntasText.setText(preguntasSintomas.get(contadorPreguntas));
        }
    }

    @FXML
    void cancelar(ActionEvent event) throws IOException{
        try {

            Parent root1 = FXMLLoader.load(getClass().getResource("/vistas/salirRepetir.fxml"));
            Main.stage.close();
            Main.stage = new Stage();
            //Propiedades de la ventana principal
            Main.stage.setTitle("Ventana "); //Titutlo de la Ventana
            Main.stage.setScene(new Scene(root1));
            Main.stage.show();
        } catch (IOException e) {
            System.out.println("ERROR CARGAR VENTANA");
            e.printStackTrace();
            return;
        }

    }
    public void llamarSintomas(String enfermedad) throws Exception{
        preguntasSintomas = new ArrayList<>();
        //for(int i=0; i<listadoEnfermedades.size();i++) {

        URL url = new URL("http://localhost/prologFinal?funcion=preguntas&enfermedad=" + enfermedad);
        String preguntasEnfermedades = "";
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"))) {
            for (String line; (line = reader.readLine()) != null; ) {
                preguntasEnfermedades += line;
            }
        }
        //System.out.println(preguntasEnfermedades);
        preguntasSintomas = Arrays.asList(preguntasEnfermedades.split("\\s*,\\s*"));
        // }

    }

    static Stage stage;
    public void CambiarVentana(String sceneName) throws IOException {
        try {

            Parent root = FXMLLoader.load(getClass().getResource("/vistas/"+sceneName));
            //Parent root = FXMLLoader.load(getClass().getResource(sceneName));
            //Parent root = FXMLLoader.load(Main.class.getResource(sceneName));
            stage.setScene(new Scene(root,300,300));

        } catch (IOException e) {
            System.out.println("ERROR CARGAR VENTANA");
            e.printStackTrace();
            return;
        }
    }




//    public static void prologFinal() throws Exception{
//        PreguntarEnfermedades:
//        for(int i=0; i<Main.listadoEnfermedades.size();i++){
//
//            URL url = new URL("http://localhost/prologFinal?funcion=preguntas&enfermedad="+Main.listadoEnfermedades.get(i));
//            String preguntasEnfermedades = "";
//            try (BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"))) {
//                for (String line; (line = reader.readLine()) != null;) {
//                    preguntasEnfermedades += line;
//                }
//            }
//            //System.out.println(preguntasEnfermedades);
//            List<String> items = Arrays.asList(preguntasEnfermedades.split("\\s*,\\s*"));
//
//            PreguntasSintomas:
//            for (int j =0;j<items.size();j++) {
//
//                System.out.println(items.get(j)+"\n");  // LABEL!
//                Scanner sc =new Scanner(System.in);  //BOTTONN
//                String Respuesta = sc.nextLine();
//
//                if(!(Respuesta.equals("S")||Respuesta.equals("s"))){
//                    break PreguntasSintomas;
//                }
//                if(j==items.size()-1){
//                    Main.enfermedadesUsuario.add(Main.listadoEnfermedades.get(i));
//
//
//                }
//
//
//
//            }
//
//        }
//    }

}