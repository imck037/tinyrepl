%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yylex(void);
void yyerror(const char *s);

/* Simple symbol table: a–z */
int symtab[26];
%}

%token NUMBER IDENT

%left '+' '-'
%left '*' '/'

%%
input:
      /* empty */
    | input line
    ;

line:
      stmt '\n'
    | expr '\n'        { printf("%d\n", $1); }
    ;

stmt:
      IDENT '=' expr   { symtab[$1] = $3; }
    ;

expr:
      expr '+' expr    { $$ = $1 + $3; }
    | expr '-' expr    { $$ = $1 - $3; }
    | expr '*' expr    { $$ = $1 * $3; }
    | expr '/' expr    { $$ = $1 / $3; }
    | '(' expr ')'     { $$ = $2; }
    | NUMBER           { $$ = $1; }
    | IDENT            { $$ = symtab[$1]; }
    ;
%%

int main(void) {
    printf("Tiny Interpreter (Ctrl+D to exit)\n> ");
    return yyparse();
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
