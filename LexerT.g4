lexer grammar LexerT;

BEGIN: 'Esto es un asalto';
END: 'noh vimoh';

WS : [ \t\r\n]+ -> skip ;

/*==============VARIABLES====================*/
/*var unsigned int : cant_plata*/
/*var char : nombre*/
/*var int : num*/
IGUAL: 'es lo mismo';
VALOR: [0] | [1-9][0-9]* | '"' [a-zA-Z]* '"';
ID: [a-z][a-zA-Z]+;
VAR: TIPO ID IGUAL VALOR';';

/*==============CONSTANTES====================*/
/* constante: tiempo_limite */
CONST: 'const ' VAR;

/*==============3 TIPOS DE DATOS====================*/
TIPO: 'int ' | 'char ' | 'float ';

/*==============LECTURA E IMPRESION====================*/
PRINTF: 'Te voy a decir una cosa:';
SCANF: '(' VALOR %d', 'VALOR')';


/* SWITCH*/
/* IF : SI*/
/* CONdiciones: se mueve*/
/* acciones : la mato */

/* while(cant_plata > 0) */
/* for (tiempo hasta tiempo_limite)*/

/* Operaciones */
PLUS: 'me gusta';
/*  resta : no me gusta*/
MINUS: 'no me gusta';
/* division : No me puedo llevar todo lo voy a divir*/
DIV: 'no me puedo llevar todo lo voy a divir';
/* multiplicacion : Cuantos tiene de */
MULT: 'cuantos tiene de';




/* Operadores */
/* && = y*/
/* || = o*/
AND: 'y';
OR: 'o';

/* if (sqrt(num))  */
SQRT: 'sqrt';
COS: 'cos';
SIN: 'sin';
TAN: 'tan';





