Usage:
$ antlr4 mql5.g4

options { language = CSharp; }

grammar mql5;

preprocessorDeclaration
    : INCLUDE
    | IMPORT
    | '#define' macroSpecification
    | '#ifdef' expression
    | '#ifndef' expression
    | '#else'
    | '#endif'
    | '#property' macroSpecification
    ;

macroSpecification: '.+';

classDeclaration: 'class' identifier classBody;

classBody:   '{' classBodyDeclaration* '}' ';';

classBodyDeclaration
    : ';'
    | memberVisibilityModifier? ':' memberDeclaration*

memberVisibilityModifier: 'public' | 'private' | 'protected';

memberDeclaration
    : methodDeclaration
    | fieldDeclaration
    ;

methodDeclaration
    : (type|'void') identifier formalParameters ('[' ']')*
        (   methodBody
        |   ';'
        )
    ;

fieldDeclaration
    : type variableDeclarators ';'
    ;

// STATEMENTS / BLOCKS

block: '{' blockStatement* '}';

// Operators
unaryOperator: '&' | '*' | '+' | '-' | '~' | '!'
    ;

unaryExpression
    :   postfixExpression
    |   '++' unaryExpression
    |   '--' unaryExpression
    |   'sizeof' unaryExpression
    |   'sizeof' '(' typeName ')'
    ;

multiplicativeExpression
    :   castExpression
    |   multiplicativeExpression '*' unaryExpression
    |   multiplicativeExpression '/' unaryExpression
    |   multiplicativeExpression '%' unaryExpression
    ;

additiveExpression
    :   multiplicativeExpression
    |   additiveExpression '+' multiplicativeExpression
    |   additiveExpression '-' multiplicativeExpression
    ;

shiftExpression
    :   additiveExpression
    |   shiftExpression '<<' additiveExpression
    |   shiftExpression '>>' additiveExpression
    ;

relationalExpression
    :   shiftExpression
    |   relationalExpression '<' shiftExpression
    |   relationalExpression '>' shiftExpression
    |   relationalExpression '<=' shiftExpression
    |   relationalExpression '>=' shiftExpression
    ;

equalityExpression
    :   relationalExpression
    |   equalityExpression '==' relationalExpression
    |   equalityExpression '!=' relationalExpression
    ;

andExpression
    :   equalityExpression
    |   andExpression '&' equalityExpression
    ;

exclusiveOrExpression
    :   andExpression
    |   exclusiveOrExpression '^' andExpression
    ;

inclusiveOrExpression
    :   exclusiveOrExpression
    |   inclusiveOrExpression '|' exclusiveOrExpression
    ;

logicalAndExpression
    :   inclusiveOrExpression
    |   logicalAndExpression '&&' inclusiveOrExpression
    ;

logicalOrExpression
    :   logicalAndExpression
    |   logicalOrExpression '||' logicalAndExpression
    ;

conditionalExpression
    :   logicalOrExpression ('?' expression ':' conditionalExpression)?
    ;

assignmentExpression
    :   conditionalExpression
    |   unaryExpression assignmentOperator assignmentExpression
    ;

assignmentOperator
    :   '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '&=' | '^=' | '|='
    ;

expression
    :   assignmentExpression
    |   expression ',' assignmentExpression
    ;

constantExpression
    :   conditionalExpression
    ;


// Integer Literals

integerLiteral
    :   DecimalIntegerLiteral
    |   HexIntegerLiteral
    |   OctalIntegerLiteral
    |   BinaryIntegerLiteral
    ;

primitiveType
    // integers
    :   'char'
    |   'short'
    |   'int'
    |   'long'
    |   'uchar'
    |   'ushort'
    |   'uint'
    |   'ulong'
    // logical
    |   'bool'
    // float-point
    |   'float'
    |   'double'
    // string
    |   'string'
    |   'color'
    |   'datetime'
    ;

structOrUnionSpecifier
    :   structOrUnion Identifier? '{' structDeclarationList '}'
    |   structOrUnion Identifier
    ;

structOrUnion
    :   'struct'
    |   'union'
    ;

structDeclarationList
    :   structDeclaration
    |   structDeclarationList structDeclaration
    ;

structDeclaration
    :   specifierQualifierList structDeclaratorList? ';'
    |   staticAssertDeclaration
    ;


//
// Whitespace and comments
//

whitespace: [ \t]+ -> skip
    ;

newline: ( '\r' '\n'? | '\n' ) -> skip
    ;

blockComment: '/*' .*? '*/' -> skip
    ;

lineComment: '//' ~[\r\n]* -> skip
    ;
