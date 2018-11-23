package org.univr.intexp;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.IOException;
import java.io.InputStream;

public class Main {
    public static void main(String args[]) throws IOException {
        // creo il class loader e lo recupero dal thread corrente
        // servirà per prendere l'etichetta 'PLUS'
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();

        // cosa succede quando lo eseguo? dentro inputstream avro lo stream di byte relativo al nome del file che gli passo
        // i file saranno dentro res
        InputStream inputStream = classLoader.getResourceAsStream(args[0]);

        // con i byte mi servono lo stream di char
        CharStream charStream = CharStreams.fromStream(inputStream); // qua avro la stringa che rappresenta il file dentro charstream

        //-----
        // creo l'analizzatore lessicale

        ExpLexer lexer = new ExpLexer(charStream); // l'analizzatore lessicale va a interagire con il file
        CommonTokenStream tokenStream = new CommonTokenStream(lexer); // e il ponte tra il lexer e il parser

        // creo il parser
        ExpParser parser = new ExpParser(tokenStream);

        // creo l'albero di parsing
        // uso il parser per creare l'albero di parser partendo dal non terminale che gli dico (usiamo exp)
        // perche nella grammatica avevo creato "exp : NAT"
        ParseTree tree = parser.exp();

        // creo l'interprete
        IntExp intExp = new IntExp();

        // stampo l'albero
        System.out.println(intExp.visit(tree));
    }
}
