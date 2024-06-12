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
          | (COS | SIN | SQRT) LPAR operation RPAR # matFun
          | ABS LPAR operation RPAR # abs
          | ID # id
          | atom # atomic
          | LPAR operation RPAR # parens;

atom: ('-' | '*')? NUMERO
     | ('-'|'*')? DECIMAL;

if_block: IF condition (ELIF condition)* (ELSE else_block)?;

else_block: LEFT_BRACE block RIGHT_BRACE
     | statement;

condition: LPAR operation RPAR LEFT_BRACE block RIGHT_BRACE
         | LPAR operation RPAR statement;

for: FOR LPAR declaration operation SEMICOLON ID (INCREMENT | DECREMENT | MINUS_ASSIGN | PLUS_ASSIGN | ASSIGN ) operation? RPAR
    (LEFT_BRACE block RIGHT_BRACE | statement);

while: WHILE condition;

assignment: ID ASSIGN (operation | STRING | INCREMENT | DECREMENT | MINUS_ASSIGN | PLUS_ASSIGN | ASSIGN) SEMICOLON;

block: statement*;


declaration: (TIPO assignment | TIPO ID SEMICOLON);

const: CONST TIPO assignment;

read: READ LPAR ID RPAR SEMICOLON;

print: PRINT LPAR (STRING | operation )* RPAR SEMICOLON;




