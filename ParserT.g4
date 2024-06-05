grammar ParserT;
import LexerT;

program: BEGIN statement* END;
statment : assignment | operation | if_block | while | declaration | const | for | read | print

operation: operation TIMES operation # times | operation DIV operation #div | operation PLUS operation # plus
| operation MINUS # minus | operation (GTHAN | LTHAN | GETHAN | LETHAN) operation # trueValue
| operation (EQUAL | NQUAL ) operation # comp | operation AND operation # and |
( COS | SEN | SQRT ) LPAR operation RPAR # abs | ID # id | atom # atomic
| LPAR operation RPAR # parens
;

atom: ('-' | '*')? NUMBER | ('-'|'*')? FLOAT;
if_block:IF condition (ELIF condition)* (ELIF condition)? (ELSE condition)?;

else: LBRACE block RBRACE |statment

condition: LPAR block RPAR LBRACE block RBRACE | LPAR operation RPAR statment

for: FOR LPAR ID '=' atom SEMICOLON operation SEMICOLON ID ('++' | '--' '+='| '-=' | '=') operation? RPAR
 (LBRACE block RBRACE |statment);

while: WHILE condition;

declaration: ('number' ID SEMICOLON 'number' assignment)
('string' ID SEMICOLON 'string' assignment)
('boolean' ID SEMICOLON 'boolean' assignment)
('float' ID SEMICOLON 'float' assignment)

block: statment*

assign: ID '=' (operation |ID | STRING | BOOLEAN) SEMICOLON;

const: CONST declaration;
read: READ LPAR ID RPAR SEMICOLON;

print: PRINT LPAR (STRING|ID)* RPAR SEMICOLON;

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