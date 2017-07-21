package com.prologFinalPHP;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

/**
 * Created by MT on 7/21/2017.
 */
public class Main{
    public static List<String> listadoEnfermedades=new ArrayList<>();
    public static List<String> enfermedadesUsuario=new ArrayList<>();


    public static void main(String[] args) throws Exception {


        PrologManager.getInstance().consultarEnfermedades();
        prologFinal();


        for(String enfermedad: enfermedadesUsuario){

            System.out.println("\n\nUSTED TIENE LAS SIGUIENTES ENFERMEDADES: \n");
            System.out.println(enfermedad);
        }







    }

    public static void prologFinal() throws Exception{
        PreguntarEnfermedades:
        for(int i=0; i<listadoEnfermedades.size();i++){

            URL url = new URL("http://localhost/prologFinal?funcion=preguntas&enfermedad="+listadoEnfermedades.get(i));
            String preguntasEnfermedades = "";
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"))) {
                for (String line; (line = reader.readLine()) != null;) {
                    preguntasEnfermedades += line;
                }
            }
            //System.out.println(preguntasEnfermedades);
            List<String> items = Arrays.asList(preguntasEnfermedades.split("\\s*,\\s*"));

            PreguntasSintomas:
            for (int j =0;j<items.size();j++) {
                System.out.println(items.get(j)+"\n");  // LABEL!
                Scanner sc =new Scanner(System.in);  //BOTTONN
                String Respuesta = sc.nextLine();

                if(!(Respuesta.equals("S")||Respuesta.equals("s"))){
                    break PreguntasSintomas;
                }
                if(j==items.size()-1){
                    enfermedadesUsuario.add(listadoEnfermedades.get(i));


                }



            }

        }
    }
}
