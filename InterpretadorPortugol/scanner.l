%option noyywrap nodefault 
%option yylineno case-insensitive

/* the symbol table */
%{
  char *curfilename;		/* Nome do arquivo de entrada*/

%}

%%

"//".*$	{printf("COMENTARIO\t%s\n", yytext );}
"/*" { BEGIN(COMMENT); 
		printf("COMENTARIO\t%s\n", yytext );
		}
<COMMENT>"*/" { BEGIN(INITIAL);
			printf("COMENTARIO\t%s\n", yytext );
			}
<COMMENT>([^*]|\n)+|. {printf("COMENTARIO\t%s\n", yytext );} 
<COMMENT><<EOF>> {printf("COMENTARIO\t%s\n", yytext );} 

\|	|
\,	|
\:	|
\(	|
\)	|
\{	|
\}	{printf("SIMBOLO: %s\n", yytext );}

"<-"	{printf("ATRIBUICAO\t %s\n", yytext );};

"="	|
"<"	|
">"	|
"<="	|
">="	|
"<>"	{printf("OPERADORRELACIONAL\t %s\n", yytext );};


\+	|
\-	|
\*	|
\%	|
\^	{printf("OPERADOR\t %s\n", yytext );}

"nao"	|
"e"	|
"ou"	|
"xou"	{printf("OPERADORLOGICO\t %s\n", yytext );};



\"(.*?)\" 	{printf("LITERAL\t %s\n", yytext );
			//"LITERAL: %s\tlinha: %d\tarquivo: %s\n", yytext, yylineno, curfilename );
			/*literal*/
			}

"algoritmo"	|
"var"	|
"inicio"	|
"funcao"	|
"retorne"	|
"fimfuncao"	|
"fimalgoritmo"	|
"inteiro"	|
"real"	|
"caractere"	|
"logico"	|
"escreval"	|
"leia"	|
"repita"	|
"ate"	|
"se"	|
"entao"	|
"senao"	{printf("PALAVRARESERVADA\t %s\n", yytext);
			// "PALAVRARESERVADA: %s\tlinha: %d\tarquivo: %s\n", yytext, yylineno, curfilename );
			/*Palavras reservadas*/
		};
		
[0-9]*\.?[0-9]*	{printf("VALORNUMERICO\t %s\n", yytext );}

[a-z]+	{printf("VARIAVEL\t %s\n", yytext );}		

.|\n	{/*Ignora o resto*/
		} 

%%


 

int main(int argc, char **argv) {

  if(argc < 2) { /* just read stdin */
  
    curfilename = "(stdin)";
    yylineno = 1;
    yylex();
	
  } else {
  
    int i = 0;
    for(i = 1; i < argc; i++) {
	
      FILE *f = fopen(argv[i], "r");
      if(!f) {
        perror(argv[1]);
        return (1);
      }
	  
      curfilename = argv[i];  /* for addref */
	  printf("\n\nARQUIVO:\t %s\n\n", curfilename );
      yyrestart(f);
      yylineno = 1;
      yylex();
      fclose(f);
	  
    }
  }
  return 0;
}
