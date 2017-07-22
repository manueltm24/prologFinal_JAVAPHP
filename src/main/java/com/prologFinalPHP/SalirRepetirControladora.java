package com.prologFinalPHP;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

/**
 * Created by MT on 7/22/2017.
 */
public class SalirRepetirControladora {

    @FXML
    void salir(ActionEvent event) {
        System.exit(0);


    }
    @FXML
    void repetir(ActionEvent event) {
        try {

            Parent root1 = FXMLLoader.load(getClass().getResource("/vistas/inicio.fxml"));
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
}
