lexer grammar LexerT;

/*==============BASICOS====================*/
BEGIN: 'Esto es un asalto';
END: 'noh vimoh';
ASSIGN: ' como ';
SEMICOLON: ' wn';
LPAR: '(';
RPAR: ')';
LEFT_BRACE: ' tonce'; //{
RIGHT_BRACE: ' y era'; //}
GTHAN: ' eh mayor q ';
LTHAN: ' eh menor q ';
GETHAN: ' eh mayor o igual q ';
LETHAN: ' eh menor o igual q ';
EQUAL: ' eh igual q ';
NQUAL: ' no eh igual q ';

WS: [ \t\r\n]+ -> skip;

/*==============VARIABLES====================*/
VAR: 'voy a fichar ';

/*==============CONSTANTES====================*/
CONST: 'voy a ficharte como eterno loh ';

/*==============TIPOS DE DATOS====================*/
NULL: ' cachai?';
TIPO: INT | CHAR | FLOAT | VAR;
INT: 'billete ';
CHAR: 'loh garabatos como ';
FLOAT: 'monea ';

/*==============LECTURA E IMPRESION====================*/
PRINT: 'Te voy a decir q: ';
READ: 'Cacha la vola: ';

/*==============CONDICIONAL====================*/
IF: 'Si';
ELSE: 'Sino';
ELIF: 'ysi';

/*==============ESTRUCTURAS REPETIDAS====================*/
WHILE: 'mientra´ q weamo';
FOR: 'pa';

/*==============OPERADORES LOGICOS====================*/
AND: ' y la wea ';
OR: ' o la wea ';

/*==============OPERADORES MATEMATICOS====================*/
/* suma: queda pa mi*/
PLUS: ' sumale '; //Esto es +
PLUS_ASSIGN: ' subele con '; //Esto es +=
EQUAL_ASSIGN: 'es lo mismo q x 2'; //Esto es ==
INCREMENT: ' sube uno po'; //Esto es el ++
/*  resta : no me gusta*/
MINUS: ' no me gusta '; //Esto es -
DECREMENT: ' robate po'; //Esto es el --
MINUS_ASSIGN: ' robate po '; //Esto es -=
DIV: ' no me puedo llevar todo lo voy a dividir '; // división
TIMES: ' cuantos tiene de '; //multiplicar

/*==============FUNCIONES MATEMATICAS====================*/
SQRT: 'sqrt';
POW: 'aumenta';
SIN: 'sin';
COS: 'cos';
ABS: 'abs';

/*==============GRAMÁTICA====================*/
NUMERO: [0] | [1-9][0-9]*;
DECIMAL: [0-9]+'.'[0-9]+;
STRING: '"'(LETRA | ESPACIO)+'"';
ESPACIO: ' ';
ID: [a-z][a-zA-Z]*;
LETRA: [a-zA-Z];