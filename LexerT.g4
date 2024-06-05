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
SEMICOLON: 'wn';
LEFT_PAREN: '(';
RIGHT_PAREN: ')';
LEFT_BRACE: ' tonce'; //{
RIGHT_BRACE: ' y era'; //}

WS: [ \t\r\n]+ -> skip;

/*==============VARIABLES====================*/
/*var unsigned int : cant_plata*/
/*var char : nombre*/
/*var int : num*/
/*var float : tiempo_disp*/
VAR: 'voy a fichar ';
CONVTIPO: INTEGER | CHAR | FLOAT;
INTEGER: 'plata,';
CHARACTER: 'garabatos,';

/*==============CONSTANTES====================*/
/*constante: ´antes que lleguen los pacos´;*/
FINAL: 'voy a fichar como eterno ';

/*==============TIPOS DE DATOS====================*/
NULL: ' cachai?';
TIPO: INT | CHAR | FLOAT;
INT: 'monea ';
CHAR: 'garabatos ';
FLOAT: 'monea partida ' | 'monea partida,';

/*==============LECTURA E IMPRESION====================*/
PRINT: 'Te voy a decir una cosa: ';
/*PRINT: ´cuanto tiempo tenemos? : */
/*READ: tiempo_disp*/
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
/* pa (tiempo hasta antes que lleguen los pacos)*/
FOR: 'pa';

/*==============OPERADORES LOGICOS====================*/
/* Operadores */
/* && = y*/
/* || = o*/
/* (==) = es lo mismo que x 2*/
AND: 'y';
OR: 'o';
MENOR_QUE: ' sea menor que ';
MAYOR_QUE: ' sea mayor que ';
IGUAL: 'es lo mismo';




/*==============OPERADORES MATEMATICOS====================*/
/* suma: queda pa mi*/
PLUS: 'queda pa mi';
/*  resta : no me gusta*/
MINUS: 'no me gusta';
/* division : No me puedo llevar todo lo voy a dividir*/
DIV: 'no me puedo llevar todo lo voy a dividir';
/* multiplicacion : Cuantos tiene de */
MULT: 'cuantos tiene de';


/*==============FUNCIONES MATEMATICAS====================*/
SQRT: 'sqrt';
/* mientras (tiempo_disp sea menor que sqrt(antes que lleguen los pacos))*/
POW: 'aumenta';

SIN: 'sin';
COS: 'cos';

