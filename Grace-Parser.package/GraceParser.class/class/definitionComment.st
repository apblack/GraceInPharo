generated
definitionComment
"%unicode ;
%id <error> <newline> ;

### State-specific token rules ###

%states string uninterpString;

string <h> : [0-9a-fA-F] ;
string <stringSegment> : ( \\[nt\{\}\""rl_] | \\u<h><h><h><h> | \\U<h><h><h><h><h><h> | \xA0 | [^\""\{\\] )+ ;
uninterpString <uninterpretedString> : [^›]+ ;

### Lexical token rules  ###

<whitespace>:  ( \x20 | \xA0 ) + ;
<newline>:  (\r | \n |  \r\n  | \x2028 ) <whitespace> ? ;
<error>: [\x00\cA-\cI\cK\cL\cO–\x1F] ;
<blankline>:  <newline> <newline> ;
<dot>: \. ;
<openTP>: ⟦ | [[ ;
<closeTP>: ⟧ | ]] ;
<outer>: outer ;
<outerDot>: <outer> <whitespace>? <dot> ;
<self>: self ;
<selfDot> : <self> <whitespace>? <dot> ;
<name> :  [a-zA-Z_] [a-zA-Z0-9_'] *;
<comment>: // [^\r\n\x2028] * ;
<decimalNumeral> :  [0-9]+ ( [.][0-9]+ )? ;
<baseExponentNumeral> : <decimalNumeral> [eE][\+\-]?[0-9]+ ;
<basedRadixNumeral>: [0-9]+x[0-9A-Za-z]+ ;
<arrow>:  -> | → ;
<dquote>:  [""] ;
<elipsis>: \.\.\. ;
<operator>: [!\?@#%^&\|~=\+\-\*/\\><:\.$]+ ;  # or any unicode mathematical operator symbol

%prefix Grace ;
%suffix Node ;
%root Root ;
%annotate_tokens ;
%start ArgumentList Block Declaration Expression Module Numeral Request Statement String Term;

#############
# Statements #
#############

Module
	: BlockBody 'body' {{ }}
	;
Sep
	: "";"" | <newline>
	;
Statement
	: Expression
	| Declaration
	| Assignment
	| Return
	| ReuseStatement
	| ImportStatement
	| DialectStatement
	| StandaloneComment
	;
Assignment
	: Identifier 'lhs' "":="" Expression 'rhs' {{ }}
	;
Return
	: ""return"" Expression 'value' {{ }}
	;
ImportStatement
	: ""import"" StringLiteral 'resource' ""as"" Identifier 'id' {{ }}
	;
DialectStatement
	: ""dialect"" StringLiteral 'resource' {{ }}
	;
StandaloneComment
	: <blankline> <comment> 'commentary' <newline> {{ }}
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
	
################
#        Requests       #
################

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
UnaryRequest
	: <operator> 'op' Term 'receiver' {{  }}
	;

#########################
#          Other Expressions          #
#########################

Block
	# this is written as two alternatives, rather than making BlockParameters optional,
	# because the latter creates a shift-reduce conflict that SmaCC can't resolve.
	: ""{"" (BlockParameters  'parameters' <arrow> ) BlockBody  'body' ""}""  {{ }}
	| ""{"" BlockBody 'body'  ""}""  {{ }}
	;
BlockParameters
	:  <name> 'parameter'  ("","" <name> 'parameter') * {{ }}
	;
BlockBody
	: {{ }}
	| Statement 'item' ( Sep '_' Statement  'item'  ) * Sep '_' ?  {{ }}		
	# which does not contain MethodsDeclarations or ReuseStatements, but that will be checked later.
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
Type
	: Identifier 'id' {{ }}
	| ""Unknown"" {{ }}
	;
Identifier
	: <name> 'id' {{ }}
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

#######################
#    Objects Constructors    #
#######################

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

StartString: { self state: #string . ^ nil} ;
StartUninterp: { self state: #uninterpString . ^ nil } ;
RetDefault: { self state: #default . ^ nil } ;"