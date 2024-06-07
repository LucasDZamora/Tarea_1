grammar ParserT;
import LexerT;

program: BEGIN statement* END;

statement : assignment
          | operation
          | if_block
          | while
          | declaration
          | const
          | for
          | read
          | print;

operation: operation TIMES operation # times
          | operation DIV operation # div
          | operation PLUS operation # plus
          | operation MINUS operation # minus
          | operation (GTHAN | LTHAN | GETHAN | LETHAN) operation # trueValue
          | operation (EQUAL | NQUAL) operation # comp
          | operation AND operation # and
          | operation OR operation # or
          | (COS | SEN | SQRT) LPAR operation RPAR # matFun
          | ABS LPAR operation RPAR # abs
          | ID # id
          | atom # atomic
          | LPAR operation RPAR # parens;

atom: ('-' | '*')? NUMERO
     | ('-'|'*')? FLOAT;

if_block: IF condition (ELIF condition)* (ELSE else_block)?;

else_block: LEFT_BRACE block RIGHT_BRACE
     | statement;

condition: LPAR operation RPAR LEFT_BRACE block RIGHT_BRACE
         | LPAR operation RPAR statement;

for: FOR LPAR declaration operation SEMICOLON ID (INCREMENT | DECREMENT | MINUS_ASSIGN | PLUS_ASSIGN | ASSIGN ) operation? RPAR
    (LEFT_BRACE block RIGHT_BRACE | statement);

while: WHILE condition;

block: statement*;

assignment: ID ASSIGN operation SEMICOLON;

declaration: (TIPO assignment | TIPO ID SEMICOLON);




const: CONST declaration;

read: READ LPAR ID RPAR SEMICOLON;

print: PRINT LPAR (STRING | ID )* RPAR;

/*Crear varible*/
dVar: VAR ID ASSIGN CONVTIPO NULL SEMICOLON;
/*Crear varible constante*/
dConst: CONST TIPO ID SEMICOLON;
/*Crear variable con valor*/

/*Asignar valor a variable*/
valorVar: ID ASSIGN term SEMICOLON;
assign: ID EQUAL (operation |ID | STRING | BOOLEAN) SEMICOLON;
expr: term MAYOR_QUE term | term MENOR_QUE term; /*¿AGREGAR MAS OPCIONES?*/
term: factor | term PLUS term | term MINUS term | term DIV term | term MULT term;
factor: NUMERO | DECIMAL | ID | mathFunction; /*¿AGREGAR PARA COMPARAR CADENAS?*/
bloqueWhile: dVar valorVar;
bloque: LEFT_BRACE bloqueWhile* RIGHT_BRACE;
mathFunction: SQRT LEFT_PAREN term RIGHT_PAREN | SIN LEFT_PAREN term RIGHT_PAREN | COS LEFT_PAREN term RIGHT_PAREN | TAN LEFT_PAREN term RIGHT_PAREN;
/*for: FOR LEFT_PAREN assignment condition SEMICOLON expr RIGHT_PAREN LEFT_BRACE bloqueFor* RIGHT_BRACE;*/
/*Bloque del ciclo for*/
/*bloqueFor: ...;*/