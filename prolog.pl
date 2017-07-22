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
			
%Descripcion de las enfermedades

descripcion(alergia,'Es un conjunto de alteraciones de carácter respiratorio, nervioso o eruptivo que se producen en el sistema 
inmunológico por una extremada sensibilidad del organismo a ciertas sustancias a las que ha sido expuesto, y que en condiciones normales no causan esas alteraciones.').

descripcion(alzheimer, 'Es una enfermedad cerebral que causa problemas con la memoria, la forma de pensar y el carácter o la manera 
de comportarse. Esta enfermedad no es una forma normal del envejecimiento.').

descripcion(anemia_severa,'Es una enfermedad causada debido a la falta de hemoglobina en la sangre que está por debajo del nivel 
normal o a niveles menos normales de glóbulos rojos en la sangre.').

descripcion(anorexia,'Es un trastorno de origen neurótico que se caracteriza por un rechazo sistemático de los alimentos y que se 
observa generalmente en personas jóvenes; suele ir acompañado de vómitos provocados, adelgazamiento extremo y, en el caso de las 
mujeres, desaparición de la menstruación.').

descripcion(apendicitis,'Es una enfermedad inflamatoria infecciosa del apéndice cecal, que, como su nombre lo indica, es un apéndice que tiene la parte inicial del intestino grueso, 
denominada ciego. Al ser una inflamación aguda, el dolor es de rápido inicio.').


descripcion(bronquiolitis,'Es la inflamación de las vías aéreas pequeñas, fundamentalmente en niños menores de 2 años. 
La bronquiolitis se caracteriza por secreción nasal, tos y dificultad para respirar en lactantes con o sin fiebre, 
precedido por una infección respiratoria alta, tal como una coriza o una otitis media.').

descripcion(chikungunya,'Este virus se adquiere por inoculación durante la picadura por un mosquito de genero Aedes que se 
encuentre infectado, este mismo mosquito transmite otros virus de la misma familia capaces de producir también otras fiebres 
hemorrágicas como es el caso del Dengue y la Fiebre Amarilla. Esta enfermedad no se transmite por las secrecionesni por el contacto 
directo con personas enfermas.').

descripcion(cistitis,'Es una infección de la mucosa (urocistitis) o de toda la pared (pancistitis) de la vejiga. Tales infecciones 
urinarias pueden presentarse de forma aislada, aguda, o repetirse de forma recurrente pudiendo finalmente dar lugar a una cistitis 
crónica. La mayor parte de las veces las cistitis no presentan complicaciones.').

descripcion(conjuntivitis,'Es una inflamación o irritación de la conjuntiva (membrana que recubre los párpados y el globo ocular). 
Se trata de una infección benigna, pero es necesario tratarla para evitar complicaciones mayores.').


descripcion(colera,'Es una enfermedad infecto-contagiosa intestinal aguda, provocada por los serotipos O1 y O139 de la bacteria 
Vibrio cholerae, que produce una diarrea secretoria caracterizada por deposiciones semejantes al agua de arroz, con un marcado olor 
a pescado, una elevada cantidad de sodio, bicarbonato y potasio, y una escasa cantidad de proteínas.').


descripcion(dengue,'Es una infección vírica transmitida por la picadura de las hembras infectadas de mosquitos del género Aedes. 
Hay cuatro serotipos de virus del dengue. El dengue se presenta en los climas tropicales y subtropicales de todo el planeta, sobre todo en las zonas urbanas y semiurbanas.').

descripcion(diabetes,'Es una enfermedad crónica e irreversible del metabolismo en la que se produce un exceso de glucosa o azúcar 
en la sangre y en la orina; es debida a una disminución de la secreción de la hormona insulina o a una deficiencia de su acción.').

descripcion(embarazo.'Es el periodo mediante el cual se gesta y desarrolla un embrión, este lapso de tiempo es de aproximadamente 
9 meses en seres humanos.').

descripcion(escoliosis,'Es un problema de salud que causa una curvatura de lado a lado en la columna vertebral. 
La curvatura puede tener forma de “S” o “C”. En la mayoría de los casos, no se sabe qué causa esta curvatura.').

descripcion(gastritis,'Es la inflamación de la mucosa gástrica, que en la gastroscopía se ve enrojecida, presentándose en 
forma de manchas rojizas, las cuales representan irritación o hemorragias subepiteliales. Sin embargo, el diagnóstico preciso se
obtiene por exploración endoscópica. En esta se apreciará si es solo una parte del estómago la que está afectada o toda la esfera 
gástrica.').


descripcion(gripe,'Es una enfermedad aguda, febril y contagiosa causada por virus. A diferencia de un resfriado, la gripe es 
una enfermedad que puede tener una evolución grave. La gripe estacional puede producir epidemias, que se concentran en un momento 
determinado en ciertos lugares.').

descripcion(leucemia,'Es una enfermedad de los órganos productores de la sangre que se caracteriza por la proliferación 
excesiva de leucocitos o glóbulos blancos en la sangre y en 
	la médula ósea.').

descripcion(migrana,'Es un dolor fuerte de cabeza que afecta, generalmente, a un lado o una parte de ella y a menudo va acompañado 
de náuseas y vómitos.').

descripcion(miopia,'Es una anomalía o defecto del ojo que produce una visión borrosa o poco clara de los objetos lejanos; 
se debe a una curvatura excesiva del cristalino que hace que las imágenes de los objetos se formen un poco antes de llegar a la retina.').

descripcion(neumonia,'Es una inflamación de los pulmones, causada por la infección de un virus o una bacteria, que se caracteriza 
por la presencia de fiebre alta, escalofríos, dolor intenso en el costado afectado del tórax, tos y expectoración.').
	
	
%Reglas para ir preguntando por los sintomas
sintoma(X):-pregunta('Usted tiene',X). 
pregunta(Incognita,X):-write(Incognita),write(' '),write(X),write(' '),write('? s/n,').

insertarEnfermedad(X):-assert(enfermedad(X)).


