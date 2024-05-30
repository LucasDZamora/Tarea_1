lexer grammar LexerT;

/*==============BASICOS====================*/
BEGIN: 'Esto es un asalto';
END: 'noh vimoh';
ID: [a-z][a-zA-Z]*;
NUMERO: [0] | [1-9][0-9]*;
DECIMAL: [0-9]+'.'[0-9]+;
CADENA: '"'(LETRA | ESPACIO)+'"';
LETRA: [a-zA-Z];
ESPACIO: ' ';
ASSIGN: ' como ';
SEMICOLON: ';';
LEFT_PAREN: '(';
RIGHT_PAREN: ')';
LEFT_BRACE: ' entonces'; //{
RIGHT_BRACE: ' hasta aqui nomas'; //}

WS: [ \t\r\n]+ -> skip;

/*==============VARIABLES====================*/
/*var unsigned int : cant_plata*/
/*var char : nombre*/
/*var int : num*/
VAR: 'voy a fichar ';
CONVTIPO: INTEGER | CHAR | FLOAT;
INTEGER: 'plata,';
CHARACTER: 'garabatos,';

/*==============CONSTANTES====================*/
/* constante: tiempo_limite */
FINAL: 'voy a fichar como eterno ';

/*==============TIPOS DE DATOS====================*/
NULL: ' cachai?';
TIPO: INT | CHAR | FLOAT;
INT: 'plata ';
CHAR: 'garabatos ';
FLOAT: 'plata partida ' | 'plata partida,';

/*==============LECTURA E IMPRESION====================*/
PRINT: 'Te voy a decir una cosa: ';
/*READ: 'Soltame el dato:';  FALTA IMPREMENTARLO Y DECIDIR EL VALOR*/

/*==============CONDICIONAL====================*/
/* IF : SI*/
/* CONdiciones: se mueve*/
/* acciones : la mato */
/* SWITCH*/
IF: 'Si';
ELSE: 'Sino';

/*==============ESTRUCTURAS REPETIDAS====================*/
/* while(cant_plata > 0) */
WHILE: 'Mientras';
/* for (tiempo hasta tiempo_limite)*/
FOR: 'patata';

/*==============OPERADORES LOGICOS====================*/
/* Operadores */
/* && = y*/
/* || = o*/
AND: 'y';
OR: 'o';
MENOR_QUE: ' sea menor que ';
MAYOR_QUE: ' sea mayor que ';

/*==============OPERADORES MATEMATICOS====================*/
PLUS: '+';
/*  resta : no me gusta*/
MINUS: 'no me gusta';
/* division : No me puedo llevar todo lo voy a divir*/
DIV: 'no me puedo llevar todo lo voy a divir';
/* multiplicacion : Cuantos tiene de */
MULT: 'cuantos tiene de';

/*==============FUNCIONES MATEMATICAS====================*/
/* if (sqrt(num))  */
SQRT: 'sqrt';
COS: 'cos';
SIN: 'sin';
TAN: 'tan';
