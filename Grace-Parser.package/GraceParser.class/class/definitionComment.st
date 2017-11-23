generated
definitionComment
"%unicode ;
%id <error> <id> <operator> <newline> ;

### State-specific token rules ###

%states string uninterpString;

string <h> : [0-9a-fA-F] ;
string <stringSegment> : ( \\[nt\{\}\""rl_\\] | \\u<h><h><h><h> | \\U<h><h><h><h><h><h> | \xA0 
					| [^\""\{\\\x00-\x1F] ) + ; 
uninterpString <uninterpretedString> : [^›]+ ;

### Lexical token rules  ###

default <whitespace>:  ( \x20 | \xA0 ) + ;
default <comment>: // [^\r\n\x2028] * ;
default <newline>:  ( \r | \n |  \r\n  | \x2028 ) <whitespace> ? ;
default <error>: [\x00-\x09\x0b\x0c\x0e–\x1F\x7f] ;
default string <dot>: \. ;
default <openTP>: ⟦ | \[\[ ;
default <closeTP>: ⟧ | \]\] ;
default <outer>: outer ;
default <outerDot>: <outer> <whitespace>? <dot> ;
default <self>: self ;
default <selfDot> : <self> <whitespace>? <dot> ;
default <id> :  [a-zA-Z_æπµ] [a-zA-Zæπµ0-9_'] *;				# and all the other non-ascii letters
default <decimalNumeral> :  [0-9]+ ( [.][0-9]+ )? ;
default <baseExponentNumeral> : <decimalNumeral> [eE][\+\-]?[0-9]+ ;
default <basedRadixNumeral>: [0-9]+x[0-9A-Za-z]+ ;
default <arrow>:  -> | → ;
default string <dquote>:  [""] ;
default <operator>: [!!\?@#%^&\|~=≠\+÷\-\*/\\><:\.\$\x22C5≤≥]+ ;   # or any other unicode mathematical operator symbol like \x22C5
default <typeOperator>: [&|+\-];

%left <typeOperator> ;
%prefix Grace ;
%suffix Node ;
%root Root ;
%annotate_tokens ;


%hierarchy Root (Declaration Parameters Expression Numeral String Statement Oneself Request ObjectConstructor) ;
%hierarchy Declaration (MethodDeclaration Import Dialect VarDeclaration DefDeclaration ClassDeclaration TraitDeclaration Parameter) ;
%hierarchy Parameter (TypeParameter MethodParameter BlockParameter) ;
%hierarchy Expression (Request Block Factor Term Identifier ObjectConstructor Numeral String Sequence Oneself Boolean) ;
%hierarchy Numeral (DecimalNumeral BaseExponentNumeral BasedRadixNumeral) ;
%hierarchy String (StringLiteral StringConstructor) ;
%hierarchy Statement (Expression Pragma Declaration Assignment Return Import Dialect ) ;
%hierarchy Oneself (Self Outer) ;
%hierarchy Request (RequestWithArguments DottedRequest AssignmentRequest UnaryRequest BinaryRequest) ;
%hierarchy OneselfRequest (SelfRequest OuterRequest) ;
%hierarchy DottedRequest (OneselfRequest TargetedRequest) ;
%hierarchy ObjectConstructor (Module) ;
%hierarchy ReuseStatement (UseStatement InheritStatement) ;

%start ArgumentList Block Declaration Expression MethodDeclaration Module Numeral ObjectItem Request Statement String Term Type ;

%attributes Root (scope) ;				# adds the instance variable scope to GraceRootNode, and thus to all of its subclasses 
%attributes Identifier (isDefinition) ;

#############
# Statements #
#############

Module
	: Ss '_' ? ( Pragma 'pragma' Ss '_'  ) *  (Dialect 'dialect' Ss '_' ) ?  (ObjectItem 'item' Ss '_' ) * ObjectItem 'item' ?	{{ }}
	;
Ss
	: "";"" 																											{{ }}
	| <newline>  																									{{ }}
	| Ss 'ss' ( "";"" | <newline> )																						{{ }}
	;
Statement
	: Expression
	| Declaration
	| Assignment
	| Return
	| Import
	| <error>
	;
Pragma
	: ""#pragma"" <id> 'pragma'  																					{{ }}
	;
Assignment
	: Identifier 'lhs' "":="" Expression 'rhs' 																			{{ }}
	| AssignmentRequest 
	;
Return
	: ""return"" Expression 'value' ? 																					{{ }}
	;
Import
	: ""import"" StringLiteral 'resource' ""as"" Identifier 'id' AnnotationOption 'annotation' 									{{ }}
	;
Dialect
	: ""dialect"" StringLiteral 'resource' 																				{{ }}
	;
Declaration
	: VarDeclaration
	| DefDeclaration
	| TypeDeclaration
	;
VarDeclaration
	: ""var"" Identifier 'id' TypeOption 'type'   AnnotationOption  'annotation' ( "":="" Expression 'initializer' ) ?  				{{  }}
	;
DefDeclaration
	: ""def"" Identifier 'id' TypeOption 'type' AnnotationOption  'annotation' ""="" Expression 'initializer'  						{{  }}
	;
AnnotationOption
	:
	| ""is"" Annotation 'ann' ( "","" Annotation 'ann' ) *  																	{{ }}
	;
Annotation
	: ""public"" 																									{{ }}
	| ""confidential"" 																								{{ }}
	| ""override"" 																									{{ }}
	| ""readable""																									{{ }}
	| ""writable"" 																									{{ }}
	| ""override""  																									{{ }}
	;
MethodDeclaration
	: ""method"" MethodHeader 'header' ReturnTypeOption 'returnType' AnnotationOption 'annotation' ""{"" ( Statement 'item' ( Ss '_' Statement  'item' ) * Ss '_' ? ) ? ""}"" {{ }}
	;
ClassOrTraitDeclaration
	: ""class"" MethodHeader 'header' ReturnTypeOption 'returnType' AnnotationOption 'annotation' ""{"" 
		( ObjectItem 'item' ( Ss '_' ObjectItem 'item' ) * Ss '_' ?  ) ?
	   ""}"" 																							{{ ClassDeclaration }}
	| ""trait"" MethodHeader 'header' ReturnTypeOption 'returnType' AnnotationOption 'annotation' ""{"" 
		( ObjectItem 'item' ( Ss '_' ObjectItem 'item' ) * Ss '_' ?  ) ?
	  ""}"" 																								{{ TraitDeclaration }}
	;
MethodHeader
	: AssignmentMethodHeader
	| ParameterizedMethodHeader 
	| ParameterlessMethodHeader 
	| BinaryMethodHeader
	| UnaryMethodHeader 
	;
AssignmentMethodHeader
	: Identifier 'id' "":="" TypeParameterList 'typeParameter' SingleMethodParameter  'parameter' 							{{ }}
	;
ParameterizedMethodHeader
	: (<id> 'part' TypeParameterList 'typeParameter' MethodParameterList 'parameterList' ) + 							{{ }}
	;
ParameterlessMethodHeader
	: <id> 'part' TypeParameterList 'typeParameter' 																	{{ }}
	;
BinaryMethodHeader
	: <operator> 'id' TypeParameterList 'typeParameter' SingleMethodParameter 'parameter' 							{{ }}
	;
UnaryMethodHeader
	: ""prefix"" <operator> TypeParameterList 'typeParameter' 															{{ }}
	;
MethodParameterList
	:  ""("" MethodParameter 'parameter' ("","" MethodParameter 'parameter' ) * "")"" 										{{  }}
	;
SingleMethodParameter
	:  ""("" MethodParameter 'parameter' "")"" 																			{{  }}
	;
ReturnTypeOption
	: 
	| <arrow> Type 'type' 																							{{ Type }}
	;
MethodParameter
	: Identifier 'id' TypeOption 'type'																				{{ }}
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
	: <selfDot> RequestPart 'request' 																				{{ }}
	;
OuterRequest
	: <outerDot> + RequestPart 'request' 																			{{ }}
	;
TargetedRequest
	: Term 'target' <dot> RequestPart 'request' 																		{{ }}
	;
AssignmentRequest
	: Term 'target' <dot> <id> 'id' "":="" Expression 'arg'  																{{ }}
	| <selfDot> <id> 'id' "":="" Expression 'arg'  																		{{ }}
	| <outerDot> + <id> 'id' "":="" Expression 'arg'  																		{{ }}
	;
RequestPart
	: Identifier 
	| RequestWithArguments
	;
RequestWithArguments 
	:  <id> 'requestPart'  TypeArguments 'typeArg' ArgumentList  'argList' ( <id>  'requestPart' ArgumentList 'argList' )*  		{{ }}		# Both type args and normal args
	|  <id> 'requestPart'  TypeArguments 'typeArg'  																	{{ }}		# Just type args
	|  <id> 'requestPart'  ArgumentList  'argList' ( <id>  'requestPart' ArgumentList 'argList' )* 								{{ }}		# Just normal args
	;
ArgumentList
	: DelimitedTerm 'arg' {{ }}
	| ""("" Expression 'arg' ("",""  Expression 'arg' ) + "")""  																	{{ }}
	;
UnaryRequest
	: <operator> 'op' TypeArguments 'typeArg' ? Term 'receiver' 														{{  }}
	;
BinaryRequest
	: Factor 'receiver'  (<operator> 'op' TypeArguments 'typeArg' ? Factor 'arg')+  										{{  }}
	;

#########################
#          Other Expressions              #
#########################

Block
	# this is written as two alternatives, rather than making the BlockParameterList optional,
	# because the latter creates a shift-reduce conflict that SmaCC can't resolve.
	: ""{"" Ss '_' ? BlockParameterList  'parameters' <arrow> Ss '_' ? (Statement 'item' ( Ss '_' Statement  'item' ) * Ss '_' ?) ? ""}""  {{ }}
	| ""{"" Ss '_' ? ( Statement 'item' ( Ss '_' Statement  'item' ) * Ss '_' ? ) ?  ""}""  											{{ }}
	;
BlockParameterList
	: BlockParameter 'parameter' ( "","" BlockParameter 'parameter' ) *													{{ }}
	;
BlockParameter
	:  Identifier 'id' PatternOption 'pattern'  																			{{ }}
	| NonIdExpression 'pattern' 																					{{ }}
	;
PatternOption
	:
	| "":"" Expression  { ^ '2' }
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
	| Interface
	| Request
	| Ellipsis
	;
Ellipsis
	: ""...""
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
	: <decimalNumeral> 																						{{ DecimalNumeral }}
	| <baseExponentNumeral> 																				{{ BaseExponentNumeral }}
	| <basedRadixNumeral> 																					{{ BasedRadixNumeral }}
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
#    Object Constructors    #
#######################

ObjectConstructor
	: ""object"" ""{"" Ss '_' ? ObjectItem 'item' ( Ss '_' ObjectItem 'item' ) * ""}"" 											{{ }}
	| ""object"" ""{"" Ss '_' ? ""}""																					{{ }}
	;
ObjectItem
	: Statement
	| MethodDeclaration
	| ReuseStatement
	| ClassOrTraitDeclaration
	;
ReuseStatement
	: ""use"" Expression 'superExpr' (ReuseModifier 'modifier') * 													{{ UseStatement }}
	| ""inherit"" Expression 'superExpr' (ReuseModifier 'modifier') * 													{{ InheritStatement }}
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
	: ""type"" Identifier 'id' TypeParameterList 'TypeParameterList' ""="" Type 'value' 							{{ }}
	| ""type"" Identifier 'id' TypeParameterList 'TypeParameterList'  ""="" InterfaceLiteral 'value' 				{{ }}
					# special case of bare interface literal without  reserved word
	;
TypeOption
	:
	| "":"" Type 'type' {{ Type }}
	;
TypeParameterList
	: 
	| <openTP> TypeParameter 'parameter' ( "","" '_' TypeParameter 'parameter' ) * <closeTP>   				{{  }}
	;
TypeParameter
	: Identifier 'id' 																					{{  }}
	;
Type
	: Type 'term' (<typeOperator> 'op' TypeArguments 'typeArg' ? TypeTerm 'arg') +  						{{ }}
	| TypeTerm 'term'  {{ }}
	;
TypeArguments
	: <openTP> Type 'typeArg' ("","" Type 'typeArg') * <closeTP>   											{{ }}
	;
TypeTerm
	:  UnknownType
	|  Interface
	| ""type"" InterfaceLiteral 'interface' 											{ '2' } 	# for backward compatibility
	| Identifier 'id' TypeArguments 'typeArg' ?															{{ }}
	| TypeTerm 'receiver' <dot> Identifier 'id' TypeArguments 'typeArg' ?  									{{ }}
	| ""("" Type 'type' "")""																				{ '2' }
	;
Signature
	: MethodHeader 'methIdentifier' ReturnTypeOption 'returnType'  										{{ }}
	;
Interface
	:  ""interface"" InterfaceLiteral 'interface'																{ '2' }
	;
InterfaceLiteral
	:  ""{"" Ss '_' ? ""}""														                  						{{ Interface }}
	|  ""{"" Ss '_' ? Signature 'method' ( Ss '_' Signature 'method' ) * Ss '_' ? ""}""								{{ Interface }}
	; 
UnknownType
	: ""Unknown""																						{{ }}
	;
StartString: { self state: #string . ^ nil} ;
StartUninterp: { self state: #uninterpString . ^ nil } ;
RetDefault: { self state: #default . ^ nil } ;
StartInterp: { self state: #default.  scanner incrementBraceDepth . ^ nil } ;"