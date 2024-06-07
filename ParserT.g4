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
| print
;

operation: operation TIMES operation # times
| operation DIV operation #div
| operation PLUS operation # plus
| operation MINUS # minus
| operation (GTHAN | LTHAN | GETHAN | LETHAN) operation # trueValue
| operation (EQUAL | NQUAL ) operation # comp
| operation AND operation # and
| operation OR operation # or
|( COS | SEN | SQRT ) LPAR operation RPAR # matFun
| ABS LPAR operation RPAR # abs
| ID # id
| atom # atomic
| LPAR operation RPAR # parens;

atom: ('-' | '*')? NUMERO
| ('-'|'*')? FLOAT;

if_block: IF condition (ELIF condition)* (ELIF condition)?;

else: LEFT_BRACE block RIGHT_BRACE
|statement;

condition: LPAR operation RPAR LEFT_BRACE operation LEFT_BRACE
| LPAR operation RPAR statement;

for: FOR LPAR ID '=' atom SEMICOLON operation SEMICOLON ID ('++' | '--' '+='| '-=' | '=') operation? RPAR
 (LEFT_BRACE block LEFT_BRACE |statement);

while: WHILE condition;

block: statement*;



declaration: ('number' ID SEMICOLON 'number' assignment)
('string' ID SEMICOLON 'string' assignment)
('boolean' ID SEMICOLON 'boolean' assignment)
('float' ID SEMICOLON 'float' assignment)
;


const: CONST declaration;
read: READ LPAR ID RPAR SEMICOLON;

print: PRINT LPAR (STRING|ID)* RPAR;

/*Crear varible*/
dVar: VAR ID ASSIGN CONVTIPO NULL SEMICOLON;
/*Crear varible constante*/
dConst: FINAL TIPO ID SEMICOLON;
/*Crear variable con valor*/
assignment: TIPO ID ASSIGN NUMERO SEMICOLON;
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