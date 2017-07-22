<?php  



switch($_GET['funcion']) {
	case 'preguntas':
		preguntas($_GET['enfermedad']);
		break;
	case 'insertarEnfermedad':
		insertarEnfermedad($_GET['enfermedad']);
		break;
}


  //$output = `swipl -s prolog.pl -g "enfermedad5(X,Y)."`;
  //$output = `swipl -s prolog.pl -g "test."`;
	
	
	
	
 function preguntas($nombreEnfermedad){
	//echo $nombreEnfermedad;
	//$preguntas = 'C:\progra~2\swipl\bin\swipl.exe -s C:\Users\MT\IdeaProjects\prologFinal\prolog.pl -g test,halt';
    $command= `swipl -s C:\Users\MT\IdeaProjects\prologFinalPHP\prolog.pl -g "enfermedad_sintoma($nombreEnfermedad). -t 'halt'"`;
	exec($command, $preguntas);
	echo $command;
	
	
	
	
	//var_dump($preguntas);
	//echo string implode ('.',$preguntas).]
	
	//exec($command,$preguntas);
	//echo implode('.',$preguntas);
}
 function insertarEnfermedad($nombreEnfermedad){
	echo $nombreEnfermedad;
	//$preguntas = 'C:\progra~2\swipl\bin\swipl.exe -s C:\Users\MT\IdeaProjects\prologFinal\prolog.pl -g test,halt';
    $command= `swipl -s C:\Users\MT\IdeaProjects\prologFinalPHP\prolog.pl -g "insertarEnfermedad($nombreEnfermedad)). -t 'halt'"`;
	exec($command, $preguntas);
	echo "INSERTADO";
	
	
	
	
	//var_dump($preguntas);
	//echo string implode ('.',$preguntas).]
	
	//exec($command,$preguntas);
	//echo implode('.',$preguntas);
}



function getPossibleWords() {
    $command = "swipl -f prolog.pl -g \"diagnostico(_)\"";
    exec($command, $wordsList);
    return($wordsList);
}
$prueba=getPossibleWords();
  //echo $output;
  //echo implode( '.', $prueba );
  //echo implode( '.', $prueba );
  //var_dump($output);
  ?>