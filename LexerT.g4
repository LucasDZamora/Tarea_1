lexer grammar LexerT;

/*==============BASICOS====================*/
BEGIN: 'Esto es un asalto';
END: 'noh vimoh';

ASSIGN: ' como ';
SEMICOLON: 'wn ';

LPAR: '(';
RPAR: ')';
LEFT_BRACE: ' tonce'; //{
RIGHT_BRACE: ' y era'; //}
GTHAN: ' eh mayor ';
LTHAN: ' eh menor ';
GETHAN: ' eh mayor o igual ';
LETHAN: ' eh menor o igual ';
EQUAL: ' eh igual ';
NQUAL: ' no eh igual ';

WS: [ \t\r\n]+ -> skip;


/*==============VARIABLES====================*/
/*var unsigned int : cant_plata*/
/*var char : nombre*/
/*var int : num*/
/*var float : tiempo_disp*/
VAR: 'voy a fichar ';

/*==============CONSTANTES====================*/

/*constante: ´antes que lleguen los pacos´;*/
CONST: 'voy a fichar como eterno ';

/*==============TIPOS DE DATOS====================*/
NULL: ' cachai?';
TIPO: INT | CHAR | FLOAT;
INT: 'monea ';
CHAR: 'garabatos ';
FLOAT: 'monea partida ';

/*==============LECTURA E IMPRESION====================*/
PRINT: 'Te voy a decir una cosa: ';
/*PRINT: ´cuanto tiempo tenemos? : */
READ: 'Aaa';

/*READ: 'Soltame el dato:';  FALTA IMPREMENTARLO Y DECIDIR EL VALOR*/

/*==============CONDICIONAL====================*/
/* IF : SI*/
/* CONdiciones: se mueve*/
/* acciones : la mato */
/* SWITCH*/
IF: 'Si';
ELSE: 'Sino';
ELIF: 'ysi';

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
PLUS: ' sumale '; //Esto es +
PLUS_ASSIGN: ' subele con '; //Esto es +=
INCREMENT: ' sube uno po '; //Esto es el ++
/*  resta : no me gusta*/
MINUS: ' no me gusta '; //Esto es -
DECREMENT: ' redule po '; //Esto es el --
MINUS_ASSIGN: ' reducelo con '; //Esto es -=
/* division : No me puedo llevar todo lo voy a dividir*/
DIV: ' no me puedo llevar todo lo voy a dividir ';
/* multiplicacion : Cuantos tiene de */
TIMES: ' cuantos tiene de ';


/*==============FUNCIONES MATEMATICAS====================*/
SQRT: 'sqrt';
/* mientras (tiempo_disp sea menor que sqrt(antes que lleguen los pacos))*/
POW: 'aumenta';
SIN: 'sin';
COS: 'cos';

NUMERO: [0] | [1-9][0-9]*;
DECIMAL: [0-9]+'.'[0-9]+;
STRING: '"'(LETRA | ESPACIO)+'"';
ESPACIO: ' ';
ID: [a-z][a-zA-Z]*;
LETRA: [a-zA-Z];