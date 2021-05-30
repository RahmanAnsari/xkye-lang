/*
MIT License

Copyright (c) 2021, Abdur Rahman
All rights reserved.
*/

grammar Xkye;

globe
   : ((clutchheader)? (globalgroup (outstring)* ))? ( (pairgroupset (outstring)*)  | ((pairgroupset (subclutchset)+ ) (outstring)*) )* EOF
   ;

clutchheader
   : LBRACKET LBRACKET 'global' RBRACKET RBRACKET
   ;

clutchdefheader
   : LBRACKET LBRACKET entity RBRACKET RBRACKET
   ;

clutchsetheader
   : LBRACKET LBRACKET entity RBRACKET LBRACKET number RBRACKET RBRACKET
   ;

subclutchset
   : (clutchdefheader | clutchsetheader) subclutchgroup
   ;

pairgroupset
   : (clutchdefheader | clutchsetheader) pairgroup
   ;

globalgroup
   : ((clutchspan)* pairgroup )+
   ;

subclutch
   : ((LBRACKET entity RBRACKET) | (LBRACKET entity RBRACKET LBRACKET number RBRACKET))
   ;

subclutchgroup
   : subclutch+
   ;

pairgroup
   : pair+
   ;

clutchspan
   : LBRACKET LBRACKET entity RBRACKET RBRACKET LPAREN number RPAREN
   ;

entity
   : ENTITY
   ;

key
   : AT entity
   ;

value
   : (INTEGER_DIGITS | INTEGER_FLOAT | STRING | IP | OCTET | SUBNET | BOOLEAN)
   ;

pair
   : key value
   ;

number
   : (INTEGER_DIGITS | OCTET)
   ;

outstring
   :  QUESTIONMARK entity (outstringsubset)?
   ;

outstringsubset
   :  BACKSLASH entity (LPAREN number RPAREN)?
   ;

fragment A
   : ('a' | 'A')
   ;

fragment B
   : ('b' | 'B')
   ;

fragment C
   : ('c' | 'C')
   ;

fragment D
   : ('d' | 'D')
   ;

fragment E
   : ('e' | 'E')
   ;

fragment F
   : ('f' | 'F')
   ;

fragment G
   : ('g' | 'G')
   ;

fragment H
   : ('h' | 'H')
   ;

fragment I
   : ('i' | 'I')
   ;

fragment J
   : ('j' | 'J')
   ;

fragment K
   : ('k' | 'K')
   ;

fragment L
   : ('l' | 'L')
   ;

fragment M
   : ('m' | 'M')
   ;

fragment N
   : ('n' | 'N')
   ;

fragment O
   : ('o' | 'O')
   ;

fragment P
   : ('p' | 'P')
   ;

fragment Q
   : ('q' | 'Q')
   ;

fragment R
   : ('r' | 'R')
   ;

fragment S
   : ('s' | 'S')
   ;

fragment T
   : ('t' | 'T')
   ;

fragment U
   : ('u' | 'U')
   ;

fragment V
   : ('v' | 'V')
   ;

fragment W
   : ('w' | 'W')
   ;

fragment X
   : ('x' | 'X')
   ;

fragment Y
   : ('y' | 'Y')
   ;

fragment Z
   : ('z' | 'Z')
   ;

fragment DIGIT
  :  '0'..'9'
  ;


IP
  :  OCTET DOT OCTET DOT OCTET DOT OCTET
  ;

SUBNET
  : IP+'/'+OCTET
  ;

UNDERSCORE
   : '_'
   ;

QUESTIONMARK
   : '?'
   ;

BACKSLASH
   : '\\'
   ;

AT
   : '@'
   ;

DOT
   : '.'
   ;

LBRACKET
   : '['
   ;

RBRACKET
   : ']'
   ;

LPAREN
   : '('
   ;

RPAREN
   : ')'
   ;

BOOLEAN
   : TRUE
   | FALSE
   ;

TRUE
   : [Tt] [Rr] [Uu] [Ee]
   ;

FALSE
   : [Ff] [Aa] [Ll] [Ss] [Ee]
   ;

OCTET
   : DIGIT DIGIT DIGIT
   | DIGIT DIGIT
   | DIGIT
   ;

INTEGER_FLOAT
   : [0-9]+ '.' [0-9]+
   ;

INTEGER_DIGITS
   : [0-9]+
   ;

STRING
   : '\'' .*? '\''
   ;

ENTITY
   : [a-z][a-z0-9_]*
   ;

LINE_COMMENT
   : '#' ~ [\r\n]* -> skip
   ;

BLOCK_COMMENT
   : '"""' .*? '"""' -> skip
   ;

WS
   : [ \r\n\t\u000C]+ -> skip
   ;

