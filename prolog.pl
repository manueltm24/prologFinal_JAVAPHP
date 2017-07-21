:-dynamic enfermedades/1.


enfermedad(gripe).
enfermedad(anemia).


enfermedad_sintomas(gripe):-sintoma(tos),sintoma(mocos),sintoma(fiebre),assert(enfermedades(gripe)).
enfermedad_sintomas(anemia):-sintoma(nauseas),sintoma(malestar),sintoma(sangre),assert(enfermedades(embarazada)).


sintoma(X):-pregunta('Usted tiene',X).
pregunta(Incognita,X):-write(Incognita),write(' '),write(X),write(' '),write('? s/n,').

insertarEnfermedad(X):-assert(enfermedad(X)).


