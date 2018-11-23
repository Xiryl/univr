package org.univr.intexp;

import org.univr.intexp.antlr.ExpBaseVisitor;
import org.univr.intexp.antlr.ExpParser;

public class IntExp extends ExpBaseVisitor<Integer> {


    // il tipo su cui valuto le espressioni sara integer (tipo di base visitors)

    /*
    * visitor ha una classe per contesto, tipo vistNat, visitplus e visit mult, gli overrido */

    // interpretazione del metodo numero
    @Override
    public Integer visitNat(ExpParser.NatContext ctx) {
        // recupero il valore di stringa dal contest
        // dentro ctx ho NAT perchè ho chiamato cosi la regola NAT, quindi a partire dal naturale prendo il testo
        // e lo ritorno come intero

        return Integer.parseInt(ctx.NAT().getText());
    }

    // interpreto il meteodo che fa la somma
    @Override
    public Integer visitPlus(ExpParser.PlusContext ctx) {
        // sottoalbero che implementa la somma. visito il contesto di sinistra:

        // un pluscontxt ottiene 2 espressioni, noi prendiamo la prima (quella di sinistra)
        // la visit interpreta ricorsivamente, visito sottoalbero sx e dx
        return visit(ctx.exp(0)) + visit(ctx.exp(1));
    }

    // stessa cosa con la moltiplicazione
    @Override
    public Integer visitMul(ExpParser.MulContext ctx) {
        return visit(ctx.exp(0)) * visit(ctx.exp(1));
    }

    
}
