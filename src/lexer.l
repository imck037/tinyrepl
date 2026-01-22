%option noyywrap

%{
#include "../build/parser.tab.h"
#include <stdlib.h>
%}

%%
[a-z]        { yylval = yytext[0] - 'a'; return IDENT; }
[0-9]+       { yylval = atoi(yytext); return NUMBER; }
[+\-*/=()\n] { return yytext[0]; }
[ \t]        ;
.            { printf("Unknown character: %s\n", yytext); }
%%
