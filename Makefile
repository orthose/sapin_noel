main: sapin.cmo lexer.cmo main.cmo
		ocamlc -o main sapin.cmo lexer.cmo main.cmo
		
main.cmo: main.ml
		ocamlc -c main.ml

sapin.cmo: sapin.ml
		ocamlc -c sapin.ml

lexer.ml: lexer.mll
		ocamllex lexer.mll
    
lexer.cmo: lexer.ml
		ocamlc -c lexer.ml 

clean:
		rm -f *.cmo *.cmi lexer.ml main