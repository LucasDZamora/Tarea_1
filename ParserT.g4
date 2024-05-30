grammar ParserT;
import LexerT;

program: BEGIN statement END;
statement: print dVar+ dConst while;
/*print*/
print: PRINT LEFT_PAREN CADENA RIGHT_PAREN SEMICOLON;
/*Crear varible*/
dVar: VAR ID ASSIGN CONVTIPO NULL SEMICOLON;
/*Crear varible constante*/
dConst: FINAL TIPO ID SEMICOLON;
/*Crear variable con valor*/
assignment: TIPO ID ASSIGN NUMERO SEMICOLON;
/*Asignar valor a variable*/
valorVar: ID ASSIGN term SEMICOLON;
condition: expr;
expr: term MAYOR_QUE term | term MENOR_QUE term; /*¿AGREGAR MAS OPCIONES?*/
term: factor | term PLUS term | term MINUS term | term DIV term | term MULT term;
factor: NUMERO | DECIMAL | ID | mathFunction; /*¿AGREGAR PARA COMPARAR CADENAS?*/
bloqueWhile: dVar valorVar;
bloque: LEFT_BRACE bloqueWhile* RIGHT_BRACE;
while: WHILE LEFT_PAREN condition RIGHT_PAREN bloque;
mathFunction: SQRT LEFT_PAREN term RIGHT_PAREN | SIN LEFT_PAREN term RIGHT_PAREN | COS LEFT_PAREN term RIGHT_PAREN | TAN LEFT_PAREN term RIGHT_PAREN;
/*for: FOR LEFT_PAREN assignment condition SEMICOLON expr RIGHT_PAREN LEFT_BRACE bloqueFor* RIGHT_BRACE;*/
/*Bloque del ciclo for*/
/*bloqueFor: ...;*/