generated
definitionComment
"%unicode ;

<whitespace>:  (\x20|\xA0|\r)* ;
<dot>: [\.] ;
<openTP>: ⟦ | [[ ;
<closeTP>: ⟧ | ]] ;
<outer>: outer ;
<outerDot>: <outer><whitespace><dot> ;
<self>: self ;
<selfDot> : <self><whitespace><dot> ;
<name> :  [a-zA-Z_] [a-zA-Z0-9_'] *;
<h> : [0-9a-fA-F] ;
%states string uninterpString;
string <stringSegment>: ( \\[nt\{\}\""rl_] | \\u<h><h><h><h> | \\U<h><h><h><h><h><h> | \xA0 | [^\""\{\\] )+ ;
uninterpString <uninterpretedString>: [^›]+ ;
<decimalNumeral> :  [0-9]+ ( [.][0-9]+ )? ;
<baseExponentNumeral> : <decimalNumeral> [eE][\+\-]?[0-9]+ ;
<basedRadixNumeral>: [0-9]+x[0-9A-Za-z]+ ;
<arrow>:  -> | → ;
<dquote>:  [""];
<elipsis>: \.\.\.;
<operator>: [!\?@#%^&\|~=\+\-\*/\\><:\.$]+ ;  # or any unicode mathematical operator symbol

%prefix Grace ;
%suffix Node ;
%root Root ;
%annotate_tokens ;
%start ArgumentList Block Declaration Expression Module Numeral Request Statement String Term;

Module
	: StatementSequence
	;
StatementSequence
	: {{ }}
	| Statement 'statement' ( "";"" Statement 'statement' ) * {{ }}
	;
Statement
	: Expression
	| Declaration
	| Assignment
	| ReuseStatement
	;
Assignment
	: Identifier 'lhs' "":="" Expression 'rhs' {{ }}
	;
Declaration
	: VarDeclaration
	| DefDeclaration
	| TypeDeclaration
	| MethodDeclaration
	| ClassOrTraitDeclaration
	;
VarDeclaration
	: ""var"" Identifier 'id' (TypePart 'type' )?  (AnnotationPart 'annotation')?  ( "":="" Expression 'initializer' ) ?  {{  }}
	;
DefDeclaration
	: ""def"" Identifier 'id' (TypePart 'type')?  (AnnotationPart 'annotation')? ""="" Expression 'initializer'  {{  }}
	;
TypeDeclaration
	: ""type"" Identifier 'id' ""="" Type 'value' {{ }}
	;
TypePart
	: "":"" Type {{ Type }}
	;
Type
	: Identifier 'id' {{ }}
	| ""Unknown"" {{ }}
	;
AnnotationPart
	: ""is"" Annotation 'ann' ( "","" Annotation 'ann' ) *  {{ }}
	;
Annotation
	: ""public"" {{ }}
	| ""confidential"" {{ }}
	| ""override"" {{ }}
	| ""readable"" {{ }}
	| ""writable"" {{ }}
	;
MethodDeclaration
	: ""method"" MethodHeader 'header' ReturnTypePart 'returnType' ? ""{"" BlockBody 'body' ""}"" {{ }}
	;
ClassOrTraitDeclaration
	: ""class"" MethodHeader 'header' ReturnTypePart 'returnType' ? ""{"" ObjectBody 'body' ""}"" {{ ClassDeclaration }}
	| ""trait"" MethodHeader 'header' ReturnTypePart 'returnType' ? ""{"" ObjectBody 'body' ""}"" {{ TraitDeclaration }}
	;
ObjectConstructor
	: ""object"" ""{"" ObjectBody 'body' ""}"" {{ }}
	;
MethodHeader
	: AssignmentMethodHeader 
	| ParameterizedMethodHeader 
	| ParameterlessMethodHeader 
	| BinaryMethodHeader
	| UnaryMethodHeader 
	;
AssignmentMethodHeader
	: Identifier 'name' "":="" TypeParameters 'typeParamerters' SingleMethodParameter  'parameter' {{ }}
	;
ParameterizedMethodHeader
	: (<name> 'part' MethodParameters 'paramList' ) + {{ }}
	;
ParameterlessMethodHeader
	: <name> 'part' 
	;
BinaryMethodHeader
	: <operator> 'name' SingleMethodParameter 'param' {{ }}
	;
UnaryMethodHeader
	: ""prefix"" <operator>  {{ }}
	;
MethodParameters 
	:  ""("" Identifier 'name' TypePart 'type' ? ("","" Identifier 'name' TypePart 'type' ? ) * "")"" {{ }}
	;
SingleMethodParameter
	:  ""("" Identifier 'name' TypePart 'type' ? "")"" {{ }}
	;
ReturnTypePart
	: <arrow> Type 'type' {{ Type }}
	;
TypeParameters
	: 
	| <openTP> Identifier 'param' ( "","" Identifier 'param' ) * <closeTP> {{ }}
	;
Block
	# this is written as two alternatives, rather than making ParameterList optional,
	# because the latter creates a shift-reduce conflict that SmaCC can't resolve.
	: ""{"" (ParameterList  'parameters' <arrow> ) BlockBody  'body' ? ""}""  {{}}
	| ""{"" BlockBody 'body' ? ""}""  {{}}
	;
BlockBody
	: Statement 'item' ( "";"" Statement  'item'  ) * {{ }}		
	# which does not contain MethodsDeclarations or ReuseStatements
	;
ObjectBody
	:  BlockBody
	;
ReuseStatement
	: ""use"" Expression 'parent' (ReuseModifier 'modifier') * {{ }}
	| ""inherit"" Expression 'parent' (ReuseModifier 'modifier') * {{ }}
	;
ReuseModifier
	: ExcludeClause
	| AliasClause
	;
ExcludeClause
	: ""exclude"" MethodHeader 'name' {{ }}
	;
AliasClause
	: ""alias"" MethodHeader 'newName' ""="" MethodHeader 'oldName' {{ }}
	;
ParameterList
	:  <name> 'parameter'  ("","" <name> 'parameter') * {{}}
	;
Expression
	: Factor 'left'  (<operator> 'op' Factor 'right')+  {{ BinaryRequest }}
	| Factor
	;
Term
	: DelimitedTerm
	| Identifier 
	| Request
	;
Factor
	: Term
	| ObjectConstructor
	| UnaryRequest
	;
UnaryRequest
	: <operator> 'op' Term 'receiver' {{  }}
	;
DelimitedTerm
	: Numeral
	| Block
	| String
	| SpecialTerm
	| ""("" Expression 'expr' "")""  {{  }}
	;
SpecialTerm
	: ""self""  {{ }}
	| ""true"" {{ }}
	| ""false"" {{ }}
	| ""outer"" {{ }}
	;
Identifier
	: <name> 'id' {{ }}
	;
Request
	: RequestPartWithArguments 
	| SelfRequest
	| OuterRequest
	| TargetedRequest
	;
SelfRequest
	: <selfDot> RequestPart 'request' {{ }}
	;
OuterRequest
	: (<outerDot>) + RequestPart 'request' {{ }}
	;
TargetedRequest
	: Term 'target' <dot> RequestPart 'request' {{ }}
	;
RequestPart
	: Identifier 
	| RequestPartWithArguments
	;
RequestPartWithArguments 
	:  <name> 'namePart'  ArgumentList  'argList' ( <name>  'namePart' ArgumentList 'argList' )*  {{ }}
	;
ArgumentList
	: DelimitedTerm 'arg' {{ }}
	| ""("" Expression 'arg' ("",""  Expression 'arg' ) + "")""  {{ }}
	;
Numeral
	: <decimalNumeral> {{ }}
	| <baseExponentNumeral> {{ }}
	| <radixNumeral> {{ }}
	;
String
	: StringLiteral 'stringLiteral'  {{ StringLiteral }}
	| StringConstructor 'stringConstructor' {{ StringConstructor }}
	| UninterpretedString 'stringLiteral' {{ UninterpretedString }}
	;	
StringLiteral
	: StartString '_' <dquote> 'openQuote' <stringSegment> 'chars' ? RetDefault '_' <dquote> 'closeQuote' {{ }}
	;
StringConstructor
	: StartString '_' <dquote> 'openQuote' 
		<stringSegment> 'stringSegment' ? 
		( RetDefault  '_' ""{"" Expression 'interpolation' StartString ""}"" <stringSegment> 'stringSegment' ? ) + RetDefault '_' 
		<dquote> 'closeQuote' {{ }}
	;
UninterpretedString
	: StartUninterp '_' ""‹"" (<uninterpretedString> 'chars')? RetDefault '_' ""›"" {{ }}
	;

StartString: { self state: #string . ^ nil} ;
StartUninterp: { self state: #uninterpString . ^ nil } ;
RetDefault: { self state: #default . ^ nil } ;"