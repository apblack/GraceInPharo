generated
definitionComment
"%unicode ;
%id <error> <id> <newline> ;

### State-specific token rules ###

%states string uninterpString;

string <h> : [0-9a-fA-F] ;
string <stringSegment> : ( \\[nt\{\}\""rl_\\] | \\u<h><h><h><h> | \\U<h><h><h><h><h><h> | \xA0 
					| [^\""\{\\\x00-\x09\x0B\x0C] ) + ;  # \x0C\x0E–\x1F\x7F
uninterpString <uninterpretedString> : [^›]+ ;

### Lexical token rules  ###

<whitespace>:  ( \x20 | \xA0 ) + ;
default <comment>: // [^\r\n\x2028] * ;
<newline>:  ( \r | \n |  \r\n  | \x2028 ) <whitespace> ? ;
<error>: [\x00-\x09\x0b\x0c\x0e–\x1F\x7f] ;
<dot>: \. ;
<openTP>: ⟦ | \[\[ ;
<closeTP>: ⟧ | \]\] ;
<outer>: outer ;
<outerDot>: <outer> <whitespace>? <dot> ;
<self>: self ;
<selfDot> : <self> <whitespace>? <dot> ;
<id> :  [a-zA-Z_æπµ] [a-zA-Zæπµ0-9_'] *;				# and all the other non-ascii letters
<decimalNumeral> :  [0-9]+ ( [.][0-9]+ )? ;
<baseExponentNumeral> : <decimalNumeral> [eE][\+\-]?[0-9]+ ;
<basedRadixNumeral>: [0-9]+x[0-9A-Za-z]+ ;
<arrow>:  -> | → ;
<dquote>:  [""] ;
<ellipsis>: \.\.\. ;
<operator>: [!!\?@#%^&\|~=≠\+÷\-\*/\\><:\.\$\x22C5≤≥]+ ;   # or any other unicode mathematical operator symbol like \x22C5
<typeOperator>: [&|+\-];

%left <typeOperator> ;
%prefix Grace ;
%suffix Node ;
%root Root ;
%annotate_tokens ;


%hierarchy Root (Declaration Parameters Expression Numeral String Statement Oneself Request ObjectConstructor) ;
%hierarchy Declaration (MethodDeclaration Import Dialect VarDeclaration DefDeclaration ClassOrTraitDeclaration Parameters) ;
%hierarchy Parameter (TypeParameter MethodParameter BlockParameter) ;
%hierarchy Expression (Request Block Factor Term Identifier ObjectConstructor Numeral String Sequence Oneself Boolean) ;
%hierarchy Numeral (DecimalNumeral BaseExponentNumeral BasedRadixNumeral) ;
%hierarchy String (StringLiteral StringConstructor) ;
%hierarchy Statement (Expression Pragma Declaration Assignment Return Import Dialect EmptyStatement) ;
%hierarchy Oneself (Self Outer) ;
%hierarchy Request (RequestWithArguments SelfRequest OuterRequest TargetedRequest AssignmentRequest UnaryRequest BinaryRequest) ;
%hierarchy ObjectConstructor (Module) ;

%start ArgumentList Block Declaration Expression MethodDeclaration Module Numeral ObjectItem Request Statement String Term Type ;

%attributes Root (scope) ;		# adds the instance variable scope to GraceRootNode, and thus to all of its subclasses 

#############
# Statements #
#############

Module
	: ObjectBody 'body' {{ }}
	;
Sep
	: "";"" 										{{ }}
	| <newline>  	{{ }}
	;
Statement
	: Expression
	| Pragma
	| Declaration
	| Assignment
	| Return
	| Import
	| Dialect
	| EmptyStatement
	| <error>
	;
Pragma
	: ""#pragma"" <id> 'pragma'  {{ }}
	;
Assignment
	: Identifier 'lhs' "":="" Expression 'rhs' {{ }}
	| AssignmentRequest 
	;
Return
	: ""return"" Expression 'value' ? {{ }}
	;
Import
	: ""import"" StringLiteral 'resource' ""as"" Identifier 'id' AnnotationOption 'annotation' {{ }}
	;
Dialect
	: ""dialect"" StringLiteral 'resource' {{ }}
	;
EmptyStatement
	:  {{ }}
	;
Declaration
	: VarDeclaration
	| DefDeclaration
	| TypeDeclaration
	;
VarDeclaration
	: ""var"" Identifier 'id' TypeOption 'type'   AnnotationOption  'annotation' ( "":="" Expression 'initializer' ) ?  {{  }}
	;
DefDeclaration
	: ""def"" Identifier 'id' TypeOption 'type' AnnotationOption  'annotation' ""="" Expression 'initializer'  {{  }}
	;
AnnotationOption
	:
	| ""is"" Annotation 'ann' ( "","" Annotation 'ann' ) *  {{ }}
	;
Annotation
	: ""public"" {{ }}
	| ""confidential"" {{ }}
	| ""override"" {{ }}
	| ""readable"" {{ }}
	| ""writable"" {{ }}
	| ""override""  {{ }}
	;
MethodDeclaration
	: ""method"" MethodHeader 'header' ReturnTypeOption 'returnType' AnnotationOption 'annotation' ""{"" BlockBody 'body' ""}"" {{ }}
	;
ClassOrTraitDeclaration
	: ""class"" MethodHeader 'header' ReturnTypeOption 'returnType' AnnotationOption 'annotation' ""{"" ObjectBody 'body' ""}"" {{ ClassDeclaration }}
	| ""trait"" MethodHeader 'header' ReturnTypeOption 'returnType' AnnotationOption 'annotation' ""{"" ObjectBody 'body' ""}"" {{ TraitDeclaration }}
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
	: Identifier 'id' "":="" TypeParameterList 'typeParameter' SingleMethodParameter  'parameter' {{ }}
	;
ParameterizedMethodHeader
	: (<id> 'part' TypeParameterList 'typeParameter' MethodParameterList 'parameters' ) + {{ }}
	;
ParameterlessMethodHeader
	: <id> 'part' TypeParameterList 'typeParameter' {{ }}
	;
BinaryMethodHeader
	: <operator> 'id' TypeParameterList 'typeParameter' SingleMethodParameter 'parameter' {{ }}
	;
UnaryMethodHeader
	: ""prefix"" <operator> TypeParameterList 'typeParameter' {{ }}
	;
MethodParameterList
	:  ""("" Parameter 'parameter' ("","" Parameter 'parameter' ) * "")"" 														{{ Parameter }}
	;
SingleMethodParameter
	:  ""("" Parameter 'parameter' "")"" 																				{{ Parameter }}
	;
Parameter
	:  Identifier 'id' TypeOption 'type'																				{{ }}
	;
ReturnTypeOption
	: 
	| <arrow> Type 'type' 	{{ Type }}
	;

################
#        Requests       #
################

Request
	: RequestWithArguments 
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
AssignmentRequest
	: Term 'target' <dot> <id> 'id' "":="" Expression 'arg'  {{ }}
	;
RequestPart
	: Identifier 
	| RequestWithArguments
	;
RequestWithArguments 
	:  <id> 'IdentifierPart'  TypeArguments 'typeArg' ArgumentList  'argList' ( <id>  'IdentifierPart' ArgumentList 'argList' )*  	{{ }}		# Both type args and normal args
	|  <id> 'IdentifierPart'  TypeArguments 'typeArg'  																	{{ }}																				# Just type args
	|  <id> 'IdentifierPart'  ArgumentList  'argList' ( <id>  'IdentifierPart' ArgumentList 'argList' )*  {{ }}									# Just normal args
	;
ArgumentList
	: DelimitedTerm 'arg' {{ }}
	| ""("" Expression 'arg' ("",""  Expression 'arg' ) + "")""  {{ }}
	;
UnaryRequest
	: <operator> 'op' TypeArguments 'typeArg' ? Term 'receiver' {{  }}
	;
BinaryRequest
	: Factor 'receiver'  (<operator> 'op' TypeArguments 'typeArg' ? Factor 'arg')+  {{  }}
	;

#########################
#          Other Expressions              #
#########################

Block
	# this is written as two alternatives, rather than making the BlockParameterList optional,
	# because the latter creates a shift-reduce conflict that SmaCC can't resolve.
	: ""{"" (BlockParameterList  'parameters' <arrow> ) BlockBody  'body' ""}""  										{{ }}
	| ""{"" BlockBody 'body'  ""}""  																					{{ }}
	;
BlockParameterList
	: BlockParameter 'parameter' ( "","" BlockParameter 'parameter' ) *												{{ }}
	;
BlockParameter
	:  Identifier 'id' PatternOption 'pattern'  																		{{ }}
	| NonIdExpression 'pattern' 																											{{ }}
	;
PatternOption
	:
	| "":"" Expression  { ^ '2' }
	;
BlockBody
	: Statement 'item' ( Sep '_' Statement  'item'  ) *  {{ }}
	;
NonIdExpression
	: BinaryRequest
	| NonIdFactor
	;
Expression
	: BinaryRequest
	| Factor
	;
NonIdTerm
	: DelimitedTerm
	| Request
	| <ellipsis>
	;
Term
	: NonIdTerm
	| Identifier 
	;
NonIdFactor
	: NonIdTerm
	| ObjectConstructor
	| UnaryRequest
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
	| SequenceConstructor
	| SpecialTerm
	| ""("" Expression 'expr' "")""  																					{{ Expression }}
	;
SpecialTerm
	: ""self""  																									{{ Self }}
	| ""true"" 																									{{ Boolean }}
	| ""false"" 																									{{ Boolean }}
	| ""outer"" 																								{{ Outer }}
	;
Identifier
	: <id> 'id' 																								{{ }}
	;
Numeral
	: <decimalNumeral> 																						{{  }}
	| <baseExponentNumeral> 																				{{  }}
	| <basedRadixNumeral> 																					{{  }}
	;
SequenceConstructor
	: ""["" ""]""	{{ }}
	| ""["" Expression 'element' ("","" Expression 'element' ) * ""]"" {{ }}
	;
String
	: StringLiteral
	| StringConstructor
	| UninterpretedString
	;	
StringLiteral
	: StartString '_' <dquote> 'openQuote' <stringSegment> 'chars' ? RetDefault '_' <dquote> 'closeQuote' {{ }}
	;
StringConstructor
	: StartString '_' <dquote> 'openQuote' 
		<stringSegment> 'stringSegment' ? 
		( StartInterp  '_' ""{"" Expression 'interpolation' StartString ""}"" <stringSegment> 'stringSegment' ? ) + RetDefault '_' 
		<dquote> 'closeQuote' {{ }}
	;
UninterpretedString
	: StartUninterp '_' ""‹"" 'openQuote' <uninterpretedString> 'chars' ? RetDefault '_' ""›"" 'closeQuote'  {{ StringLiteral }}
	;

#######################
#    Objects Constructors    #
#######################

ObjectBody
	: ObjectItem 'item' ( Sep '_' ObjectItem  'item'  ) *  					{{ }}		
	;
ObjectItem
	: Statement
	| MethodDeclaration
	| ReuseStatement
	| ClassOrTraitDeclaration
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
	: ""exclude"" MethodHeader 'method' {{ }}
	;
AliasClause
	: ""alias"" MethodHeader 'newIdentifier' ""="" MethodHeader 'oldIdentifier' {{ }}
	;
	
#######################
#                 Types                     #	
#######################


TypeDeclaration
	: ""type"" Identifier 'id' TypeParameterList 'TypeParameterList' ""="" Type 'value' {{ }}
	| ""type"" Identifier 'id' TypeParameterList 'TypeParameterList'  ""="" InterfaceLiteral 'value' {{ }}
	;
TypeOption
	:
	| "":"" Type 'type' {{ Type }}
	;
TypeParameterList
	: 
	| <openTP> TypeParameter 'parameter' ( "","" '_' TypeParameter 'parameter' ) * <closeTP>   {{ TypeParameter }}
	;
TypeParameter
	: Identifier 'parameter'  {{  }}
	;
Type
	: Type 'term' (<typeOperator> 'op' TypeArguments 'typeArg' ? TypeTerm 'arg') +  {{ }}
	| TypeTerm 'term'  {{ }}
	;
TypeArguments
	: <openTP> Type 'typeArg' ("","" Type 'typeArg') * <closeTP>   {{ }}
	;
TypeTerm
	: ""Unknown""									{{ }}
	| ""interface"" InterfaceLiteral  'interface'		{{ }}
	| ""type"" InterfaceLiteral 'interface' 				{{ }}	# for backward compatibility
	| Identifier 'id' TypeArguments 'typeArg' ?		{{ }}
	| TypeTerm <dot> Identifier 'id' TypeArguments 'typeArg' ?  {{ }}
	| ""("" Type 'type' "")""								{{ }}
	;
Signature
	: MethodHeader 'methIdentifier' ReturnTypeOption 'returnType'  {{ }}
	;
InterfaceLiteral
	:  ""{"" Sep '_' ? ""}""														                  {{ Interface }}
	|  ""{"" Sep '_' ? Signature 'method' ( Sep '_' Signature 'method' ) * Sep '_' ? ""}""		{{ Interface }}
	; 

StartString: { self state: #string . ^ nil} ;
StartUninterp: { self state: #uninterpString . ^ nil } ;
RetDefault: { self state: #default . ^ nil } ;
StartInterp: { self state: #default.  scanner incrementBraceDepth . ^ nil } ;"