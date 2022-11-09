PROG=scanner

run: compile
	./$(PROG).exe exemplos/algoritmo1.por exemplos/algoritmo2.por exemplos/algoritmo3.por exemplos/algoritmo4.por exemplos/algoritmo5.por
	#./$(PROG).exe HelloWorld.por

compile: clean scan
	gcc lex.yy.c -o $(PROG).exe -lfl

scan:
	flex $(PROG).l
	
clean:
	rm -f lex.yy.c $(PROG).exe
