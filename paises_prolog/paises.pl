es_pais(peru).
es_pais(venezuela).
es_pais(colombia).
es_pais(ecuador).
es_pais(chile).
es_pais(brasil).
es_pais(guyana).
es_pais(suriname).
es_pais(guyana_francesa).
es_pais(paraguay).
es_pais(uruguay).
es_pais(bolivia).
es_pais(argentina).

%es capital
es_capital(lima,peru).
es_capital(caracas,venezuela).
es_capital(bogota,colombia).
es_capital(quito,ecuador).
es_capital(santiago,chile).
es_capital(brasilia,brasil).
es_capital(georgetown,guyana).
es_capital(paramaribo,suriname).
es_capital(cayena,guyana_francesa).
es_capital(asuncion,paraguay).
es_capital(montevideo,uruguay).
es_capital(la_paz,bolivia).
es_capital(buenos_aires,argentina).

%color de bandera
bandera(blanco,peru).
bandera(rojo,peru).

bandera(blanco,argentina).
bandera(celeste,argentina).

bandera(rojo,bolivia).
bandera(amarillo,bolivia).
bandera(verde,bolivia).

bandera(verde,brasil).
bandera(amarillo,brasil).
bandera(azul,brasil).

bandera(azul,chile).
bandera(rojo,chile).
bandera(blanco,chile).

bandera(amarillo,colombia).
bandera(azul,colombia).
bandera(rojo,colombia).

bandera(amarillo,ecuador).
bandera(azul,ecuador).
bandera(rojo,ecuador).

bandera(amarillo,venezuela).
bandera(azul,venezuela).
bandera(rojo,venezuela).

bandera(azul,uruguay).
bandera(blanco,uruguay).

bandera(rojo,paraguay).
bandera(blanco,paraguay).
bandera(azul,paraguay).

bandera(verde,guyana_francesa).
bandera(amarillo,guyana_francesa).

bandera(amarillo,guyana).
bandera(verde,guyana).
bandera(rojo,guyana).
bandera(blanco,guyana).
bandera(negro,guyana).

bandera(verde,suriname).
bandera(rojo,suriname).
bandera(blanco,suriname).


%un pais limita con otro
limita_con(venezuela,guyana).   %venezuela limita con guyana
limita_con(venezuela,colombia).
limita_con(venezuela,brasil).
limita_con(guyana,suriname).
limita_con(guyana,brasil).
limita_con(suriname,guyana_francesa).
limita_con(suriname,brasil).
limita_con(guyana_francesa,brasil).
limita_con(brasil,argentina).
limita_con(brasil,paraguay).
limita_con(brasil,uruguay).
limita_con(brasil,colombia).
limita_con(brasil,peru).
limita_con(brasil,bolivia).
limita_con(colombia,ecuador).
limita_con(colombia,peru).
limita_con(ecuador,peru).
limita_con(peru,bolivia).
limita_con(peru,chile).
limita_con(bolivia,chile).
limita_con(bolivia,argentina).
limita_con(bolivia,paraguay).
limita_con(paraguay,argentina).
limita_con(paraguay,argentina).
limita_con(argentina,chile).
limita_con(argentina,uruguay).
limita_con(venezuela,brasil).

%paises limitrofes
limitrofes(X,Y):-limita_con(X,Y). %OR
limitrofes(X,Y):-limita_con(Y,X).

%superficie por pais
superficie_pais(brasil,8515767).
superficie_pais(uruguay,176215).
superficie_pais(argentina,2780400).
superficie_pais(chile,756096).
superficie_pais(bolivia,1098581).
superficie_pais(peru,1285216).
superficie_pais(ecuador,256370).
superficie_pais(colombia,1141748).
superficie_pais(venezuela,916445).
superficie_pais(guyana,214970).
superficie_pais(suriname,163821).
superficie_pais(guyana_francesa,83534).
superficie_pais(paraguay,406752).

%un pais es pequeño
pais_pequeno(X):-superficie_pais(X,Y),Y<1000000.
pais_mediano(X):-superficie_pais(X,Y),Y>1000000,Y<5000000.
pais_grande(X):-superficie_pais(X,Y),Y>5000000.

translimitrofes(X,Y):-limitrofes(X,Z),limitrofes(Z,Y),dif(X,Y),not(limitrofes(X,Y)).
