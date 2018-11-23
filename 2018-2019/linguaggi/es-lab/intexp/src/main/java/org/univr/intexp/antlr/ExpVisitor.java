// Generated from /home/ubuntu/intexp/src/main/resources/Exp.g4 by ANTLR 4.7
package org.univr.intexp.antlr;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link ExpParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface ExpVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link ExpParser#main}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMain(ExpParser.MainContext ctx);
	/**
	 * Visit a parse tree produced by {@link ExpParser#prog}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProg(ExpParser.ProgContext ctx);
	/**
	 * Visit a parse tree produced by the {@code idinit}
	 * labeled alternative in {@link ExpParser#init}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdinit(ExpParser.IdinitContext ctx);
	/**
	 * Visit a parse tree produced by the {@code nilinit}
	 * labeled alternative in {@link ExpParser#init}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNilinit(ExpParser.NilinitContext ctx);
	/**
	 * Visit a parse tree produced by the {@code nat}
	 * labeled alternative in {@link ExpParser#exp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNat(ExpParser.NatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code plus}
	 * labeled alternative in {@link ExpParser#exp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPlus(ExpParser.PlusContext ctx);
	/**
	 * Visit a parse tree produced by the {@code mul}
	 * labeled alternative in {@link ExpParser#exp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMul(ExpParser.MulContext ctx);
	/**
	 * Visit a parse tree produced by the {@code id}
	 * labeled alternative in {@link ExpParser#exp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitId(ExpParser.IdContext ctx);
}