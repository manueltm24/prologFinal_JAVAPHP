test:- write('HOLA MUNDO').


sintoma1(gripe,tos):-write(tos).
sintoma1(gripe,mareo).
sintoma1(nauseas,noc).


enfermedad5(gripe,X):- findall(Y,sintoma1(gripe,Y),X).



enfermedad(gripe):-sintoma(tos),sintoma(mocos),sintoma(fiebre),assert(enfermedades(gripe)).
enfermedad(embarazada):-sintoma(nauseas),sintoma(malestar),sintoma(sangre),assert(enfermedades(embarazada)).


sintoma(X):-pregunta('Usted tiene',X).
pregunta(Incognita,X):-write(Incognita),write(' '),write(X),write(' '),write('? s/n. ').
