// grammatica per esercizio lab
grammar Exp;

main : prog EOF ;

prog : init exp ;

init : ID EQ exp SC init #idinit
     |                   #nilinit
     ;

exp : NAT                       #nat
    | LPAR exp PLUS exp RPAR    #plus
    | LPAR exp MUL exp  RPAR    #mul
    | ID                        #id
    ;

LPAR    : '(' ;
RPAR    : ')' ;
NAT     : '0' | [1-9][0-9]* ; // da 1 a 9 concatenato a una sequenza da 0-9 in questo modo 003 non viene matchata
PLUS    : '+' ;
MUL     : '*' ;
EQ      : '=' ;
SC      : ';' ;
ID      : [a-z]+ ;
WS      : [ \t\n\r]+ -> skip ;


/*
    Per costruire la categoria degli identificatori:

    sono una qualsiasi stringa lowercase non vuota, posso usare la sequente regex
    [a-z]+


    SBAGLIATA:
    // grammatica per esercizio lab
    grammar Exp;

    main : prog EOF ;

    prog : command exp
         | command
         | exp command
         | command prog
         ;

    command : ID EQ exp SC             #assgnExpression
            ;

    exp : NAT                       #nat
        | LPAR exp PLUS exp RPAR    #plus
        | LPAR exp MUL exp  RPAR    #mul
        | LPAR ID PLUS exp RPAR     #idPlus
        | LPAR ID MUL exp RPAR      #idMul
        | ID MUL exp                #idMulNoPar
        | ID PLUS exp               #idPlusNoPar
        ;

    LPAR    : '(' ;
    RPAR    : ')' ;
    NAT     : '0' | [1-9][0-9]* ; // da 1 a 9 concatenato a una sequenza da 0-9 in questo modo 003 non viene matchata
    PLUS    : '+' ;
    MUL     : '*' ;
    EQ      : '=' ;
    SC      : ';' ;
    ID      : [a-z]+ ;
    WS      : [ \t\n\r]+ -> skip ;

*/