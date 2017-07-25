package com.prologFinalPHP;


import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by MT on 7/21/2017.
 */
public class Main extends   Application {

    static Stage stage;

    public static void main(String[] args) throws SQLException {

        PrologManager.getInstance().consultarEnfermedades();
        Application.launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        try {
            stage=primaryStage;

            Parent root = FXMLLoader.load(getClass().getResource("/vistas/inicio.fxml"));

            //Propiedades de la ventana principal
            stage.setTitle("Ventana Principal"); //Titutlo de la Ventana
            stage.setMaximized(false);
            stage.setResizable(false);
            primaryStage.initStyle(StageStyle.UNDECORATED);
            stage.setScene(new Scene(root));
            stage.show();
        } catch (IOException e) {
            System.out.println("ERROR CARGAR VENTANA");
            e.printStackTrace();
            return;
        }
    }






//    public static void prologFinal() throws Exception{
//        PreguntarEnfermedades:
//        for(int i=0; i<listadoEnfermedades.size();i++){
//
//            URL url = new URL("http://localhost/prologFinal?funcion=preguntas&enfermedad="+listadoEnfermedades.get(i));
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
//                System.out.println(items.get(j)+"\n");  // LABEL!
//                Scanner sc =new Scanner(System.in);  //BOTTONN
//                String Respuesta = sc.nextLine();
//
//                if(!(Respuesta.equals("S")||Respuesta.equals("s"))){
//                    break PreguntasSintomas;
//                }
//                if(j==items.size()-1){
//                    enfermedadesUsuario.add(listadoEnfermedades.get(i));
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
