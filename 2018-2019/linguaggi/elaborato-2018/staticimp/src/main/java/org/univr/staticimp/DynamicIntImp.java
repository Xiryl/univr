package org.univr.staticimp;

import org.univr.staticimp.antlr.StaticImpBaseVisitor;
import org.univr.staticimp.antlr.StaticImpParser;
import org.univr.staticimp.value.*;
import org.univr.staticimp.value.Value;

import java.util.Random;

public class DynamicIntImp extends StaticImpBaseVisitor<Value> {

    private final DynamicConf conf;

    public DynamicIntImp(DynamicConf conf) {
        this.conf = conf;
    }

    @Override
    public ComValue visitProg(StaticImpParser.ProgContext ctx) {
        return visitCom(ctx.com());
    }

    private int visitNatExp(StaticImpParser.ExpContext ctx) {
        return ((NaturalValue) visit(ctx)).toJavaValue();
    }

    private boolean visitBoolExp(StaticImpParser.ExpContext ctx) {
        return ((BooleanValue) visit(ctx)).toJavaValue();
    }

    private ExpValue<?> visitExp(StaticImpParser.ExpContext ctx) {
        return (ExpValue<?>) visit(ctx);
    }

    private ComValue visitCom(StaticImpParser.ComContext ctx) {
        return (ComValue) visit(ctx);
    }

    @Override
    public ComValue visitSkip(StaticImpParser.SkipContext ctx) {
        return ComValue.INSTANCE;
    }

    @Override
    public Value visitDoWhile(StaticImpParser.DoWhileContext ctx) {
        visitCom(ctx.com());

        while (visitBoolExp(ctx.exp())) {
            visitCom(ctx.com());
        }

        return ComValue.INSTANCE;
    }

    @Override
    public Value visitNd(StaticImpParser.NdContext ctx) {
        Random r = new Random();

        if (r.nextBoolean()) {
            visitCom(ctx.com(0));
        } else {
            visitCom(ctx.com(1));
        }

        return ComValue.INSTANCE;
    }

    @Override
    public Value visitFor(StaticImpParser.ForContext ctx) {
        visitCom(ctx.com(0));

        while (visitBoolExp(ctx.exp())) {
            visitCom(ctx.com(2));
            visitCom(ctx.com(1));
        }

        return ComValue.INSTANCE;
    }

    @Override
    public ComValue visitDecl(StaticImpParser.DeclContext ctx) {
        switch (ctx.type.getType()) {
            case StaticImpParser.TBOOL : conf.put(ctx.ID().getText(), new BooleanValue(false)); break;
            case StaticImpParser.TNAT  : conf.put(ctx.ID().getText(), new NaturalValue(0));
        }

        return ComValue.INSTANCE;
    }

    @Override
    public ComValue visitAssign(StaticImpParser.AssignContext ctx) {
        conf.put(ctx.ID().getText(), visitExp(ctx.exp()));
        return ComValue.INSTANCE;
    }

    @Override
    public ComValue visitOut(StaticImpParser.OutContext ctx) {
        System.out.println(visitExp(ctx.exp()));
        return ComValue.INSTANCE;
    }


    @Override
    public ComValue visitWhile(StaticImpParser.WhileContext ctx) {
        if (!visitBoolExp(ctx.exp()))
            return ComValue.INSTANCE;

        visit(ctx.com());
        return visitCom(ctx);
    }

    @Override
    public ComValue visitSeq(StaticImpParser.SeqContext ctx) {
        visit(ctx.com(0));
        visit(ctx.com(1));

        return ComValue.INSTANCE;
    }

    @Override
    public ComValue visitIf(StaticImpParser.IfContext ctx) {
        for (int i = 0; i < ctx.exp().size(); i++) {
            if (visitBoolExp(ctx.exp(i))) {
                visitCom(ctx.com(i));

                return ComValue.INSTANCE;
            }
        }

        visitCom(ctx.com().get(ctx.com().size() - 1));

        return ComValue.INSTANCE;
    }

    @Override
    public NaturalValue visitNat(StaticImpParser.NatContext ctx) {
        return new NaturalValue(Integer.parseInt(ctx.NAT().getText()));
    }

    @Override
    public BooleanValue visitBool(StaticImpParser.BoolContext ctx) {
        return new BooleanValue(Boolean.parseBoolean(ctx.BOOL().getText()));
    }

    @Override
    public ExpValue<?> visitParExp(StaticImpParser.ParExpContext ctx) {
        return visitExp(ctx.exp());
    }

    @Override
    public ExpValue<?> visitNot(StaticImpParser.NotContext ctx) {
        return new BooleanValue(!visitBoolExp(ctx.exp()));
    }

    @Override
    public NaturalValue visitPow(StaticImpParser.PowContext ctx) {
        int base = visitNatExp(ctx.exp(0));
        int exp = visitNatExp(ctx.exp(1));

        return new NaturalValue((int) Math.pow(base, exp));
    }

    @Override
    public NaturalValue visitDivMulMod(StaticImpParser.DivMulModContext ctx) {
        int left = visitNatExp(ctx.exp(0));
        int right = visitNatExp(ctx.exp(1));

        switch (ctx.op.getType()) {
            case StaticImpParser.DIV : return new NaturalValue(left / right);
            case StaticImpParser.MUL : return new NaturalValue(left * right);
            case StaticImpParser.MOD : return new NaturalValue(left % right);
        }

        return null; // dumb return (non-reachable code)
    }

    @Override
    public NaturalValue visitPlusMinus(StaticImpParser.PlusMinusContext ctx) {
        int left = visitNatExp(ctx.exp(0));
        int right = visitNatExp(ctx.exp(1));

        switch (ctx.op.getType()) {
            case StaticImpParser.PLUS  : return new NaturalValue(left + right);
            case StaticImpParser.MINUS : return new NaturalValue(Math.max(left - right, 0));
        }

        return null; // dumb return (non-reachable code)
    }

    @Override
    public BooleanValue visitCmpExp(StaticImpParser.CmpExpContext ctx) {
        int left = visitNatExp(ctx.exp(0));
        int right = visitNatExp(ctx.exp(1));

        switch (ctx.op.getType()) {
            case StaticImpParser.GEQ : return new BooleanValue(left >= right);
            case StaticImpParser.LEQ : return new BooleanValue(left <= right);
            case StaticImpParser.LT  : return new BooleanValue(left < right);
            case StaticImpParser.GT  : return new BooleanValue(left > right);
        }

        return null; // dumb return (non-reachable code)
    }

    @Override
    public BooleanValue visitEqExp(StaticImpParser.EqExpContext ctx) {
        ExpValue<?> left = visitExp(ctx.exp(0));
        ExpValue<?> right = visitExp(ctx.exp(1));

        switch (ctx.op.getType()) {
            case StaticImpParser.EQQ : return new BooleanValue(left.equals(right));
            case StaticImpParser.NEQ : return new BooleanValue(!left.equals(right));
        }

        return null; // dumb return (non-reachable code)
    }

    @Override
    public BooleanValue visitLogicExp(StaticImpParser.LogicExpContext ctx) {
        boolean left = visitBoolExp(ctx.exp(0));
        boolean right = visitBoolExp(ctx.exp(1));

        switch (ctx.op.getType()) {
            case StaticImpParser.AND : return new BooleanValue(left && right);
            case StaticImpParser.OR  : return new BooleanValue(left || right);
        }

        return null; // dumb return (non-reachable code)
    }

    @Override
    public ExpValue<?> visitId(StaticImpParser.IdContext ctx) {
        return conf.get(ctx.ID().getText());
    }
}
