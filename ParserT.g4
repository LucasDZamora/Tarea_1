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
          | (COS | SIN | SQRT) LEFT_BRACE operation RIGHT_BRACE # matFun
          | ABS LEFT_BRACE operation RIGHT_BRACE # abs
          | ID # id
          | atom # atomic
          | LEFT_BRACE operation RIGHT_BRACE # parens;

atom: ('-' | '*')? NUMERO
     | ('-'|'*')? DECIMAL;

if_block: IF condition (ELIF condition)* (ELSE else_block)?;

else_block: LEFT_BRACE block RIGHT_BRACE
     | statement;

condition: LEFT_BRACE operation RIGHT_BRACE LEFT_BRACE block RIGHT_BRACE
         | LEFT_BRACE operation RIGHT_BRACE statement;

for: FOR LEFT_BRACE declaration operation SEMICOLON ID (INCREMENT | DECREMENT | MINUS_ASSIGN | PLUS_ASSIGN | ASSIGN ) operation? RIGHT_BRACE
    (LEFT_BRACE block RIGHT_BRACE | statement);

while: WHILE condition;

block: statement*;

assignment: ID ASSIGN (operation | STRING | INCREMENT | DECREMENT | MINUS_ASSIGN | PLUS_ASSIGN | ASSIGN) SEMICOLON;

declaration: (TIPO assignment | TIPO ID SEMICOLON);

const: CONST TIPO assignment;

read: READ LEFT_BRACE ID RIGHT_BRACE SEMICOLON;

print: PRINT LEFT_BRACE (STRING | operation )* RIGHT_BRACE;



