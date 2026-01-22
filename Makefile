CFLAGS = -Wall -Wextra -g
LEX = flex
YACC = bison

all: tinyrepl

tinyrepl: lexer parser
	gcc $(CFLAGS) build/lex.yy.c build/parser.tab.c -o tinyrepl

lexer:
	$(LEX) -o build/lex.yy.c src/lexer.l

parser:
	$(YACC) -d -o build/parser.tab.c src/parser.y

clean:
	rm -rf build/* *.o tinyrepl
