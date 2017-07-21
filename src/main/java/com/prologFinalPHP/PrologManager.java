package com.prologFinalPHP;


import org.jpl7.*;


import java.util.*;
import java.util.List;



/**
 * Created by MT on 7/17/2017.
 */
public class PrologManager {
        private static PrologManager _instance;


    public PrologManager(){
        String t1 = "consult('prolog.pl')";
        Query q = new Query(t1);

        if( q.hasSolution() == true)
            System.out.println("SE CONECTO A PROLOG");
        else
            System.out.println("FALLO LA CONEXION A PROLOG");

    }

    public static PrologManager getInstance(){

        if(_instance == null)
            _instance = new PrologManager();

        return _instance;

    }

    public void consultarEnfermedades(){
        Query q1 = new Query(new Compound("enfermedad", new Term[] { new Variable("X")}));

        System.out.println(q1.goal());
        while ( q1.hasMoreSolutions() ){
            System.out.println(q1.nextSolution().get("X").toString());
            Main.listadoEnfermedades.add(q1.nextSolution().get("X").toString());

            //enfermedades.add(q1.nextSolution().get("X").toString());
            //System.out.println( "Y = " + q1.nextSolution().get("X"));
        }

    }




}
