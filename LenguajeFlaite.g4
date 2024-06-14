lexer grammar LenguajeFlaite;

/*==============BASICOS====================*/
BEGIN: 'Esto es un asalto'; // begin
END: 'noh vimoh'; // end
ASSIGN: ' como '; // =
SEMICOLON: ' wn'; // ;
LPAR: '('; // (
RPAR: ')'; // )
LEFT_BRACE: ' tonce'; // {
RIGHT_BRACE: ' y era'; // }
COMPARAR: GTHAN | LTHAN | GETHAN | LETHAN; // Seleccionar como comparar (si son mayores, menores, mayor o igual, menor o igual)
GTHAN: ' eh mayor q '; // >
LTHAN: ' eh menor q '; // <
GETHAN: ' eh mayor o igual q '; // >=
LETHAN: ' eh menor o igual q '; // <=
COMP: EQUAL | NQUAL; // Seleccionar como comparar (si son iguales o distintos)
EQUAL: ' eh igual q '; // ==
NQUAL: ' no eh igual q '; // !=

WS: [ \t\r\n]+ -> skip;

/*==============VARIABLES====================*/
VAR: 'voy a fichar '; // declarar como var

/*==============CONSTANTES====================*/
CONST: 'voy a ficharte como eterno loh '; // declarar como constante

/*==============TIPOS DE DATOS====================*/
TIPO: INT | CHAR | FLOAT | VAR; // Seleccionar tipo de dato
INT: 'monea '; // int
CHAR: 'loh garabatos como '; // char
FLOAT: 'billete '; // float

/*==============LECTURA E IMPRESION====================*/
PRINT: 'Te voy a decir q: '; // print
READ: 'Cacha la vola: '; // leer

/*==============CONDICIONAL====================*/
IF: 'Si'; // if
ELSE: 'Sino'; // else
ELIF: 'ysi'; // elif

/*==============ESTRUCTURAS REPETIDAS====================*/
WHILE: 'mientra q weamo'; // ciclo while
FOR: 'pa'; // ciclo for

/*==============OPERADORES LOGICOS====================*/
OP_LOGICO: AND | OR;
AND: ' y la wea '; // and
OR: ' o la wea '; // or

/*==============OPERADORES MATEMATICOS====================*/
/* suma: queda pa mi*/
OPERADOR_MATH: MULT | DIV | PLUS | MINUS; //seleccionar operador matematico
PLUS: ' sumale '; //Esto es +
PLUS_ASSIGN: ' subele con '; //Esto es +=
EQUAL_ASSIGN: 'es lo mismo q x 2'; //Esto es ==
INCREMENT: ' sube uno po'; //Esto es el ++
MINUS: ' no me gusta '; //Esto es -
DECREMENT: ' robate po'; //Esto es el --
MINUS_ASSIGN: ' robate po '; //Esto es -=
DIV: ' no me puedo llevar todo lo voy a dividir '; // división
MULT: ' cuantos tiene de '; //multiplicar

/*==============FUNCIONES MATEMATICAS====================*/
OP_MATH: COS | SIN | SQRT;
SQRT: 'scort'; //raiz
POW: 'aumenta'; //potencia
SIN: 'senos'; // seno
COS: 'coito'; // coseno
ABS: 'abs'; // valor absoluto

/*==============GRAMÁTICA====================*/

NUMERO: ('-' | '+')? (ENTERO | DECIMAL); // Seleccionar numero entero o decimal
ENTERO: [0] | [1-9][0-9]*; // Numeros enteros
DECIMAL: [0-9]+'.'[0-9]+; // Numeros decimales
STRING: '"'(LETRA | ESPACIO)+'"'; // Cadenas en parentesis
ESPACIO: ' '; // Espacio
ID: [a-z][a-zA-Z]*; // Nombre de las variables
LETRA: [a-zA-Z]; // Letras