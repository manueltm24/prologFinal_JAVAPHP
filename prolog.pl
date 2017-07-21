:-dynamic enfermedades/1.

%DECLARACION DE ENFERMEDADES
enfermedad(alergia).
enfermedad(alzheimer).
enfermedad('anemia severa').
enfermedad(anorexia).
enfermedad(apendicitis).
enfermedad(bronquiolitis).
enfermedad(chikungunya).
enfermedad(cistitis).
enfermedad(conjuntivitis).
enfermedad(colera).
enfermedad(dengue).
enfermedad(diabetes).
enfermedad(embarazo).
enfermedad(escoliosis).
enfermedad(gastritis).
enfermedad(gripe).
enfermedad(leucemia).
enfermedad(migrana).
enfermedad(miopia).
enfermedad(neumonia).


%ENFERMEDADES CON SUS SINTOMAS
enfermedad_sintoma(alergia):-

				sintoma(estornudos),
				sintoma('ojos llorosos'),
				sintoma('ardor en la nariz'),
				sintoma('picor en la garganta/boca/labios'),
				sintoma('inflamación de boca/vías respiratorias').
			
enfermedad_sintoma(alzheimer):-

				sintoma('perdida de memoria'),
				sintoma('dificultad para pensar'),
				sintoma('dificultad para hablar'),
				sintoma('dificultad para leer'),
				sintoma('dificultad visual'),
				sintoma(confusion),
				sintoma(desorentacion).
				

enfermedad_sintoma('anemia severa'):-

				sintoma('falta de energia'),
				sintoma(debilidad),
				sintoma(mareos),
				sintoma(palpitaciones),
				sintoma(palidez),
				sintoma('piel amarilla'),
				sintoma('perdida de vision').
		

enfermedad_sintoma(anorexia):-
		
				sintoma('falta de energia'),
				sintoma(debilidad),
				sintoma('piel amarilla'),
				sintoma('piel reseca'),
				sintoma(mareos),
				sintoma(desmayos),
				sintoma(anemia),
				sintoma('perdida de peso drastico').

enfermedad_sintoma(apendicitis):-

				sintoma('dolor abdominal'),
				sintoma(vomitos),
				sintoma(fiebre),
				sintoma('colicos estomacales'),
				sintoma(calambres).
				

enfermedad_sintoma(bronquiolitis):-

				sintoma(tos),
				sintoma(mocos),
				sintoma(fatiga),
				sintoma(somnolencia),
				sintoma('dolor en el torax').

				
enfermedad_sintoma(chikungunya):-

				sintoma(fiebre),
				sintoma('erupciones en la piel'),
				sintoma('dolores musculares'),
				sintoma('dolor de cabeza'),
				sintoma('dolores articulares').
	

enfermedad_sintoma(cistitis):-

				sintoma('dolor de espalda'),
				sintoma('deseos de orinar frecuente'),
				sintoma('dolor en el vientre'),
				sintoma('ausencia de orina').

enfermedad_sintoma(conjuntivitis):-

				sintoma(lagrimeo),
				sintoma('picor en los ojos'),
				sintoma('ojos rojos').
				

enfermedad_sintoma(colera):-

				sintoma('diarrea abundante'),
				sintoma(nauseas),
				sintoma(vomitos),
				sintoma('calambres musculares'),
				sintoma('defensa baja'),
				sintoma(desidratacion).
			

enfermedad_sintoma(dengue):-

				sintoma('fiebre alta'),
				sintoma('dolor de cabeza'),
				sintoma('dolor en los ojos'),
				sintoma('dolores articulares'),
				sintoma(debilidad),
				sintoma(nauseas),
				sintoma('defensa baja').
		
enfermedad_sintoma(diabetes):-

				sintoma('vision borrosa'),
				sintoma('aumento o perdida de peso'),
				sintoma('erupciones cutaneas'),
				sintoma('adormecimiento de pies'),
				sintoma(somnolencia).

enfermedad_sintoma(embarazo):-

				sintoma('ausencia del perido'),
				sintoma('dolor en los pezones'),
				sintoma('nauseas'),
				sintoma('vomitos'),
				sintoma('sensibilidad amentada a olores'),
				sintoma('hinchazon en los senos'),
				sintoma('aumento de apetito').


enfermedad_sintoma(escoliosis):-

				sintoma('hombros desiguales'),
				sintoma('cintura dispareja'),
				sintoma('inclinacion hacia un lado'),
				sintoma('dolor de espalda'),
				sintoma('dificultad para respirar'),
				sintoma('perdida de reflejos').

enfermedad_sintoma(gastritis):-

				sintoma('malestar estomacal'),
        			sintoma('ardor de estomago'),
       				sintoma(nauseas),
				sintoma(vomitos),
				sintoma(dolor),
				sintoma(eructos),
				sintoma('hinchazon abdominal'),
				sintoma(ansiedad),
				sintoma(diarrea).
			

enfermedad_sintoma(gripe):-

				sintoma(estornudos),
				sintoma(tos),
				sintoma(mocos),
				sintoma(fiebre).
				

enfermedad_sintoma(leucemia):-

				sintoma(fiebre),
				sintoma(escalofrios),
				sintoma(anemia),
				sintoma(palidez),
				sintoma(debilidad),
				sintoma('perdida de apetito'),
				sintoma('perdida de peso'),
				sintoma('dolor en articulaciones'),
				sintoma('encias sangrantes').
				
enfermedad_sintoma(miopia):-

				sintoma('buena vision cercana'),
				sintoma('dificultad para ver de lejos').
				
				
enfermedad_sintoma(migrana):-

				sintoma('dolor de cabeza'),
				sintoma('vision borrosa'),
				sintoma('dolor de ojos'),
				sintoma(nauseas),
				sintoma(vomitos),
				sintoma(debilidad),
				sintoma('sencibilidad a la luz').
			
				

enfermedad_sintoma(neumonia):-

				sintoma(escalofrio),
				sintoma(fiebre),
				sintoma(tos),
				sintoma('dolor de pecho'),
				sintoma('dolor al respirar'),
				sintoma('falta de oxigeno').
			
				
%Reglas para ir preguntando por los sintomas
sintoma(X):-pregunta('Usted tiene',X). 
pregunta(Incognita,X):-write(Incognita),write(' '),write(X),write(' '),write('? s/n,').

insertarEnfermedad(X):-assert(enfermedad(X)).


