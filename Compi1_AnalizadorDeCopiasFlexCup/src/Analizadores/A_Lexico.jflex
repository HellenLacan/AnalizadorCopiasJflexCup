/****************************************  1ra Area: Codigo de Usuario *******************************************/
//------> Paquetes,importaciones
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;

/*************************************  2da Area: Opciones y Declaraciones **************************************/
%%
%{
    //----> Codigo de usuario en sintaxis java
%}

//-------> Directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode

//------> Expresiones Regulares
numero = [0-9]+

//------> Estados

%%
/*************************************  3raa Area: Reglas Lexicas *******************************************************/

//-----> Simbolos

"Import"    { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.iimport, yycolumn, yyline, yytext()); }
"class"     { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.claass, yycolumn, yyline, yytext()); }

"int"       { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.iint, yycolumn, yyline, yytext()); }
"boolean"   { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.bool, yycolumn, yyline, yytext()); }
"String"    { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.string, yycolumn, yyline, yytext()); }
"char"      { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.chaar, yycolumn, yyline, yytext()); }
"double"    { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.doublee, yycolumn, yyline, yytext()); }
"Object"    { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.object, yycolumn, yyline, yytext()); }

"if"        { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.iff, yycolumn, yyline, yytext()); }
"else"      { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.elsee, yycolumn, yyline, yytext()); }
"for"       { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.foor, yycolumn, yyline, yytext()); }
"while"     { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.whilee, yycolumn, yyline, yytext()); }
"do"        { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.doo, yycolumn, yyline, yytext()); }
"switch"    { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.swiitch, yycolumn, yyline, yytext()); }

"private"   { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.priivate, yycolumn, yyline, yytext()); }
"public"    { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.puublic, yycolumn, yyline, yytext()); }
"protected" { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.prootected, yycolumn, yyline, yytext()); }
"final"     { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.fiinal, yycolumn, yyline, yytext()); }

"."         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.pto, yycolumn, yyline, yytext()); }
";"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.ptoYcoma, yycolumn, yyline, yytext()); }
"{"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.corcha, yycolumn, yyline, yytext()); }
"}"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.corchc, yycolumn, yyline, yytext()); }
"("         { System.out.println("Reconocio "+yytext()+" para"); return new Symbol(Simbolos.para, yycolumn, yyline, yytext()); }
")"         { System.out.println("Reconocio "+yytext()+" parc"); return new Symbol(Simbolos.parc, yycolumn, yyline, yytext()); }

">"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.mayor, yycolumn, yyline, yytext()); }
"<"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.menor, yycolumn, yyline, yytext()); }
"="         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.asignacion, yycolumn, yyline, yytext()); }
">="         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.mayorQ, yycolumn, yyline, yytext()); }
"<="         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.menorQ, yycolumn, yyline, yytext()); }
"!="         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.distinto, yycolumn, yyline, yytext()); }
"=="         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.iguala, yycolumn, yyline, yytext()); }

"+"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.mas, yycolumn, yyline, yytext()); }
"-"         { System.out.println("Reconocio "+yytext()+" menos"); return new Symbol(Simbolos.menos, yycolumn, yyline, yytext()); }
"*"         { System.out.println("Reconocio "+yytext()+" por"); return new Symbol(Simbolos.por, yycolumn, yyline, yytext()); }
"/"         { System.out.println("Reconocio "+yytext()+" div"); return new Symbol(Simbolos.div, yycolumn, yyline, yytext()); }

//-------> Simbolos ER
 {numero}    { System.out.println("Reconocio "+yytext()+" num"); return new Symbol(Simbolos.num, yycolumn, yyline, yytext()); }

//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);}
