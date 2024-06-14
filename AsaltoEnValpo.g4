grammar AsaltoEnValpo;
import LenguajeFlaite;

program: BEGIN statement* END;

statement : assignment
          | operation
          | if_block //Si
          | while //mientra q weamo
          | declaration
          | const //voy a ficharte como eterno loh
          | for //pa
          | read //Cacha la vola:
          | print;//Te voy a decir q:

operation: operation TIMES operation # times // cuantos tiene de (*)
          | operation DIV operation # div // no me puedo llevar todo lo voy a dividir (/)
          | operation PLUS operation # plus // sumale (+)
          | operation MINUS operation # minus // no me gusta (-)
          | operation (GTHAN /* eh mayor o igual q (>) */| LTHAN/* eh menor q (<) */ | GETHAN/* eh mayor o igual q (>=) */ | LETHAN/* eh menor o igual q (>=) */)
            operation # trueValue
          | operation (EQUAL/*  eh igual q (==) */ | NQUAL /* no eh igual q (!=) */) operation # comp
          | operation AND operation # and // y la wea
          | operation OR operation # or // o la wea
          | (COS /*coito*/ | SIN /*senos*/ | SQRT /*sqort*/) LPAR /* ( */ operation RPAR /* ) */ # matFun
          | ABS /*abs*/ LPAR /* ( */ operation RPAR /* ) */ # abs
          | ID # id //aBCdef
          | atom # atomic //250 o -250 (postivos o negativos)
          | LPAR /* ( */ operation RPAR /* ) */ # parens;

atom: ('-' | '*')? NUMERO
     | ('-'|'*')? DECIMAL;

if_block: IF /*Si*/ condition (ELIF/*ysi*/ condition)* (ELSE /*Sino*/ else_block)?;

else_block: LEFT_BRACE/*{*/ block RIGHT_BRACE/*}*/
     | statement;

condition: LPAR/* ( */ operation RPAR/* ) */ LEFT_BRACE/*{*/ block RIGHT_BRACE/*}*/
         | LPAR/* ( */ operation RPAR/* ) */ statement;

for: FOR /*pa*/ LPAR/* ( */ declaration operation SEMICOLON /*wn*/ ID (INCREMENT/* sube uno po*/| DECREMENT/* robate po*/
     | MINUS_ASSIGN/* robate po */ | PLUS_ASSIGN/* subele con */ | ASSIGN/* como */ ) operation? RPAR/* ) */
    (LEFT_BRACE /*{*/ block RIGHT_BRACE/*}*/ | statement);

while: WHILE /*mientra q weamo*/ condition;

assignment: ID/*variable*/ ASSIGN/* como */ (operation | STRING | INCREMENT | DECREMENT
| MINUS_ASSIGN/* robate po */ | PLUS_ASSIGN/* subele con */ | ASSIGN/* como */) SEMICOLON/* wn*/;

block: statement*;

declaration: (TIPO/* billete/monea (int/float)*/ assignment | TIPO/* billete/monea (int/float)*/ ID/*variable*/ SEMICOLON/* wn*/);

const: CONST/*voy a ficharte como eterno loh */ TIPO/* billete/monea (int/float)*/ assignment;

read: READ/*Cacha la vola: */ LPAR/* ( */ ID/*variable*/ RPAR/* ) */ SEMICOLON/* wn*/;

print: PRINT/*Te voy a decir q: */ LPAR/* ( */ (STRING | operation )* RPAR/* ) */ SEMICOLON/* wn*/;




