/****************************************  1ra Area: Codigo de Usuario *******************************************/
//------> Paquetes,importaciones
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;
import clase1.Token;
import java.util.ArrayList;


/*************************************  2da Area: Opciones y Declaraciones **************************************/
%%
%{
    //----> Codigo de usuario en sintaxis java
    ArrayList<Token> arrayTokens = new ArrayList<Token>();
    Token miToken;

    public void mostrarTokens(){
        for (Token item : arrayTokens) {
                System.out.print("Fila"+"               " + "Token"+"           "   + "Fila"+"               " + "Columna");
                System.out.print(item.getLexema()+"     " + item.getToken()+"     " + item.getFila() + "     " + item.getColumna());
                System.out.println("");
        }
}

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
id = [A-Za-zñÑ] [_0-9A-Za-zñÑ]*
decimal = [0-9]+ \. [0-9]+ | \. [0-9]+ 
cadena =  "\"" [^\"\n]* "\""     
 
//------> Estas ER son para omitir comentarios, en este caso no se omitiran debido a que se necesita saber cuantos comentarios se repiten en un proyecto para la deteccion de copias.
ComentarioMultiLinea = "/*" [^*] ~"*/" | "/*" "*"+ "/" 
ComentarioLinea =  "/" "/" [^}\n]*    


//------> Estados

%%
/*************************************  3raa Area: Reglas Lexicas *******************************************************/

//-----> Simbolos

"Import"    { System.out.println("Reconocio "+yytext()+" Reservada");
              miToken = new Token();
              miToken.setFila(yyline);
              miToken.setColumna(yycolumn);
              miToken.setLexema(yytext());
              miToken.setToken("claass");
              arrayTokens.add(miToken);
       
              return new Symbol(Simbolos.iimport, yycolumn, yyline, yytext()); }
"class"     { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.claass, yycolumn, yyline, yytext()); }
"void"      { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.voiid, yycolumn, yyline, yytext()); }

"new"       { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.ne, yycolumn, yyline, yytext()); }


"true"      { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.truee, yycolumn, yyline, yytext()); }
"false"      { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.falsee, yycolumn, yyline, yytext()); }


"int"       { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.iint, yycolumn, yyline, yytext()); }
"boolean"   { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.bool, yycolumn, yyline, yytext()); }
"String"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.string, yycolumn, yyline, yytext()); }
"char"      { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.chaar, yycolumn, yyline, yytext()); }
"double"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.doublee, yycolumn, yyline, yytext()); }
"Object"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.object, yycolumn, yyline, yytext()); }

"if"        { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.iff, yycolumn, yyline, yytext()); }
"else"      { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.elsee, yycolumn, yyline, yytext()); }
"for"       { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.foor, yycolumn, yyline, yytext()); }
"while"     { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.whilee, yycolumn, yyline, yytext()); }
"do"        { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.doo, yycolumn, yyline, yytext()); }
"switch"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.swiitch, yycolumn, yyline, yytext()); }
"case"      { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.casee, yycolumn, yyline, yytext()); }
"default"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.defauult, yycolumn, yyline, yytext()); }
"break"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.breeak, yycolumn, yyline, yytext()); }
"return"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.retuurn, yycolumn, yyline, yytext()); }


"private"   { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.priivate, yycolumn, yyline, yytext()); }
"public"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.puublic, yycolumn, yyline, yytext()); }
"protected" { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.prootected, yycolumn, yyline, yytext()); }
"final"     { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.fiinal, yycolumn, yyline, yytext()); }
"static"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.staatic, yycolumn, yyline, yytext()); }

"."         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.pto, yycolumn, yyline, yytext()); }
";"         { System.out.println("Reconocio "+yytext()+" ptoYcoma"); return new Symbol(Simbolos.ptoYcoma, yycolumn, yyline, yytext()); }
":"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.dosPtos, yycolumn, yyline, yytext()); }
","         { System.out.println("Reconocio "+yytext()+" coma"); return new Symbol(Simbolos.coma, yycolumn, yyline, yytext()); }
"{"         { System.out.println("Reconocio "+yytext()+" llaveAb"); return new Symbol(Simbolos.llavea, yycolumn, yyline, yytext()); }
"}"         { System.out.println("Reconocio "+yytext()+" llaveC"); return new Symbol(Simbolos.llavec, yycolumn, yyline, yytext()); }
"("         { System.out.println("Reconocio "+yytext()+" para"); return new Symbol(Simbolos.para, yycolumn, yyline, yytext()); }
")"         { System.out.println("Reconocio "+yytext()+" parc"); return new Symbol(Simbolos.parc, yycolumn, yyline, yytext()); }
"\""         { System.out.println("Reconocio "+yytext()+" comilla"); return new Symbol(Simbolos.parc, yycolumn, yyline, yytext()); }

">"         { System.out.println("Reconocio "+yytext()+" mayor"); return new Symbol(Simbolos.mayor, yycolumn, yyline, yytext()); }
"<"         { System.out.println("Reconocio "+yytext()+" menor"); return new Symbol(Simbolos.menor, yycolumn, yyline, yytext()); }
"="         { System.out.println("Reconocio "+yytext()+" asignacion"); return new Symbol(Simbolos.asignacion, yycolumn, yyline, yytext()); }
">="         { System.out.println("Reconocio "+yytext()+" mayorQ"); return new Symbol(Simbolos.mayorQ, yycolumn, yyline, yytext()); }
"<="         { System.out.println("Reconocio "+yytext()+" menorQ"); return new Symbol(Simbolos.menorQ, yycolumn, yyline, yytext()); }
"!="         { System.out.println("Reconocio "+yytext()+" distinto"); return new Symbol(Simbolos.distinto, yycolumn, yyline, yytext()); }
"=="         { System.out.println("Reconocio "+yytext()+" igual"); return new Symbol(Simbolos.iguala, yycolumn, yyline, yytext()); }

"&&"         { System.out.println("Reconocio "+yytext()+" and"); return new Symbol(Simbolos.and, yycolumn, yyline, yytext()); }
"||"         { System.out.println("Reconocio "+yytext()+" or"); return new Symbol(Simbolos.or, yycolumn, yyline, yytext()); }
"!"          { System.out.println("Reconocio "+yytext()+" not"); return new Symbol(Simbolos.not, yycolumn, yyline, yytext()); }

"+"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.mas, yycolumn, yyline, yytext()); }
"-"         { System.out.println("Reconocio "+yytext()+" menos"); return new Symbol(Simbolos.menos, yycolumn, yyline, yytext()); }
"*"         { System.out.println("Reconocio "+yytext()+" por"); return new Symbol(Simbolos.por, yycolumn, yyline, yytext()); }
"/"         { System.out.println("Reconocio "+yytext()+" div"); return new Symbol(Simbolos.div, yycolumn, yyline, yytext()); }
"%"         { System.out.println("Reconocio "+yytext()+" modo"); return new Symbol(Simbolos.mod, yycolumn, yyline, yytext()); }

"++"         { System.out.println("Reconocio "+yytext()+" incremento"); return new Symbol(Simbolos.incremento, yycolumn, yyline, yytext()); }
"--"         { System.out.println("Reconocio "+yytext()+" decremento"); return new Symbol(Simbolos.decremento, yycolumn, yyline, yytext()); }


//-------> Simbolos ER
 {numero}    { System.out.println("Reconocio "+yytext()+" num"); return new Symbol(Simbolos.num, yycolumn, yyline, yytext()); }
 {id}        { System.out.println("Reconocio "+yytext()+" id"); return new Symbol(Simbolos.id, yycolumn, yyline, yytext()); }
 {decimal}   { System.out.println("Reconocio "+yytext()+" decimal"); return new Symbol(Simbolos.decimal, yycolumn, yyline, yytext()); }
 {cadena}    { System.out.println("Reconocio "+yytext()+" cadena"); return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext()); }

//{ComentarioLinea}            {  System.out.println("Reconocio "+yytext()+" coment"); return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext());}
//------> Espacios
[ \t\r\n\f]                  {/* Espacios en blanco, se ignoran */}
//{ComentarioMultiLinea}       { /* ignorar */ }

//------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);}
