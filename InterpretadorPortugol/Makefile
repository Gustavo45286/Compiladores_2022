PROG=scanner

run: compile
	./$(PROG).exe Trabalho-01-BBC.por
	#./$(PROG).exe HelloWorld.por

compile: cls scan
	gcc lex.yy.c -o $(PROG).exe -lfl

scan:
	flex $(PROG).l
	
cls:
	rm -f lex.yy.c $(PROG).exe
