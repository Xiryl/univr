// grammatica per esercizio lab
grammar Exp;

main : prog EOF ;

prog : init exp;
init : exp SC                   #basicExpression
     | ID EQ exp SC             #assgnExpression
     ;

exp : NAT                       #nat
    | LPAR exp PLUS exp RPAR    #plus
    | LPAR exp MUL exp  RPAR    #mul
    ;

LPAR : '(' ;
RPAR : ')' ;
NAT : '0' | [1-9][0-9]* ; // da 1 a 9 concatenato a una sequenza da 0-9 in questo modo 003 non viene matchata
PLUS : '+' ;
MUL : '*' ;
EQ : '=' ;
SC : ';' ;
ID : '[a-z]+' ;


WS : [ \t\n\r]+ -> skip ;

/*
    Per costruire la categoria degli identificatori:

    sono una qualsiasi stringa lowercase non vuota, posso usare la sequente regex
    [a-z]+

*/