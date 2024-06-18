grammar ParserT;
import LexerT;

//Integrantes: Kavon Kermani, Gabriel Sanzana, Lucas Zamora

program: BEGIN statement* END;

statement : assignment // (asignar valor a una variable)
          | operation // (operaciones)
          | if //Si
          | while //mientra q weamo
          | declaration
          | const //voy a ficharte como eterno loh
          | for //pa
          | read //Cacha la vola:
          | print;//Te voy a decir q:

operation: operation OPERADOR_MATH operation # operation_math // Multiplicar, dividir, sumar o restar ( cuantos tiene de ,  no me puedo llevar todo lo voy a dividir , sumale ,  no me gusta )
          | operation COMPARAR operation # comparar // > , < , >=, <= ( eh mayor q ,  eh menor q ,  eh mayor o igual q ,  eh menor o igual q )
          | operation COMP operation # comp // == , != ( eh igual q ,  no eh igual q )
          | operation OP_LOGICO operation # and // and, or (y la wea, o la wea)
          | OP_MATH PARENTESIS_IZQ /* ( */ operation PARENTESIS_DER /* ) */ # matFun // coseno, seno, raiz (coito,seno,scrot)
          | ABS /*abs*/ PARENTESIS_IZQ /* ( */ operation PARENTESIS_DER /* ) */ # valorAbsoluto
          | POW /*aumenta*/ PARENTESIS_IZQ /* ( */ ID ',' NUMERO PARENTESIS_DER /* ) */ # pow
          | ID # id //nombre de la variable formada con letras [a-z][a-zA-Z]*
          | NUMERO # numero // declarar numeros enteros o decimales, positivos o negativos
          | PARENTESIS_IZQ /* ( */ operation PARENTESIS_DER /* ) */ # parentesis;


if: IF /*Si*/ condition elif else;

elif: (ELIF/*ysi*/ condition)*;

else: (ELSE /*Sino*/ else_block)?;

else_block: LLAVE_IZQ statement* LLAVE_DER
     | statement; // Varios statement o solo uno

condition: PARENTESIS_IZQ operation PARENTESIS_DER (LLAVE_IZQ statement* LLAVE_DER | statement); //Condición, varios statement o solo uno

for: FOR /*pa*/ PARENTESIS_IZQ declaration operation SEMICOLON ID (INCREMENT/* sube uno po*/| DECREMENT/* robate po*/
     | MINUS_ASSIGN/* robate po */ | PLUS_ASSIGN/* subele con */ | ASSIGN/* como */ ) operation? PARENTESIS_DER
    (LLAVE_IZQ statement* LLAVE_DER| statement);

while: WHILE /*mientra q weamo*/ condition;

declaration: (TIPO assignment | TIPO ID SEMICOLON);

const: CONST/*voy a ficharte como eterno loh */ TIPO/* billete/monea (int/float)*/ assignment;

read: READ/*Cacha la vola: */ PARENTESIS_IZQ  ID/*variable*/ PARENTESIS_DER SEMICOLON/* wn*/;

print: PRINT/*Te voy a decir q: */ PARENTESIS_IZQ (STRING | operation )* PARENTESIS_DER SEMICOLON/* wn*/;

assignment: ID/*variable*/ ASSIGN/* como */ (operation | STRING | INCREMENT | DECREMENT
| MINUS_ASSIGN/* robate po */ | PLUS_ASSIGN/* subele con */ | ASSIGN/* como */) SEMICOLON/* wn*/;


