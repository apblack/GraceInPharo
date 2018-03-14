generated
definitionComment
"%start Expression ExpressionList Identifier Outer ;

<whitespace>:  ( \x20 | \xA0 | \t ) + ;
<newline>:  ( \r | \n |  \r\n  ) <whitespace> ? ;
<comment>:  // [^\r\n] * ;
<dot>: [.] ;
<outer>: outer ;
<id> :  [a-zA-Z][a-zA-Z0-9] * ;

%root Root ;
%prefix OS ;
%annotate_tokens ;
%hierarchy Expression (Identifier Outer Request) ;
%hierarchy Request (ExplicitRequest OuterRequest) ;

ExpressionList 
	: ( Expression 'expr' <newline> + )* 	{{ }}
	;
Identifier
	: <id>							{{ }}
	;
Expression
	: Identifier			
	| Outer
	| Identifier 'receiver' <dot>  Identifier 'message'		{{ ExplicitRequest }}
	| Outer 'receiver' <dot> Identifier 'message'			{{ OuterRequest }}
	;
Outer
#	: <outer> (<outer> <dot> ) * ;				{{ }}			
	: <outer>  'outer'							{{ }}
	| Outer <dot> <outer> 'outer' 				{{ }}
	;"