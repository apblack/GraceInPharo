generated
definitionComment
"%unicode ;
%id <error> <id> <comment> <operator> <newline> <selfDot> <outerDot> <outer>;

### State-specific token rules ###

%states string uninterpString ;

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
default <explicitRadixNumeral>: [0-9]+x[0-9A-Za-z]+ ;
default <arrow>:  -> | → ;
default string <dquote>:  [""] ;
default <operator>: [!!\?@#%^&\|~=≠\+÷\-\*/\\><:\.\$\x22C5≤≥¬]+ ;   # or any other unicode mathematical operator symbol like \x22C5
default <typeOperator>: [&|+\-];
default <typeRelation>: \<\: | \:\> | \<\* | \*\> ;

%left <typeOperator> ;
%prefix Grace ;
%suffix Node ;
%root Root ;
%annotate_tokens ;

%hierarchy Root (Statement) ;
%hierarchy Declaration (GenerativeDeclaration Import Dialect VariableDeclaration Parameter TypeDeclaration) ;
%hierarchy GenerativeDeclaration (MethodDeclaration ClassDeclaration TraitDeclaration) ;
%hierarchy VariableDeclaration (VarDeclaration DefDeclaration) ;
%hierarchy Parameter (TypeParameter MethodParameter BlockParameter) ;
%hierarchy SomeParameters (BlockParameterList MethodParameterList SingleMethodParameter TypeParameterList) ;
%hierarchy Expression (Factor Type) ;
%hierarchy Factor (Term ObjectConstructor) ;
%hierarchy Term (Identifier Numeral Block String SequenceConstructor SpecialTerm Request Ellipsis) ;
%hierarchy SpecialTerm (Oneself Boolean) ;
%hierarchy Numeral (DecimalNumeral BaseExponentNumeral ExplicitRadixNumeral) ;
%hierarchy String (StringLiteral StringConstructor) ;
%hierarchy Statement (Expression Pragma Declaration Assignment Return ) ;
%hierarchy Oneself (Self Outer) ;
%hierarchy Request (ImplicitRequest ExplicitRequest) ;
%hierarchy RequestPart (RequestPartNoArguments RequestPartsWithArguments) ;
%hierarchy ExplicitRequest (OneselfRequest DottedRequest AssignmentRequest UnaryRequest BinaryRequest) ;
%hierarchy OneselfRequest (SelfRequest OuterRequest) ;
%hierarchy ObjectConstructor (Module) ;
%hierarchy ReuseStatement (UseStatement InheritStatement) ;
%hierarchy Type (InterfaceLiteral TypeExpression UnknownType SelfType) ;
%hierarchy MethodHeader (AssignmentMethodHeader BinaryMethodHeader ParameterizedMethodHeader ParameterlessMethodHeader
 UnaryMethodHeader) ;
%start ArgumentList Block Declaration Expression MethodDeclaration Module Numeral ObjectItem Request Statement String Term Type ;

%attributes Root (scope) ;				# adds the instance variable scope to GraceRootNode, and thus to all of its subclasses 
%attributes Identifier (isDefinition variable) ;
%attributes Declaration (annotationNames variable) ;
%attributes Module (compilationTime name) ;
%attributes ObjectConstructor (declaredName variable) ;
%attributes Return (declaredType) ;

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
	: ""import"" StringLiteral 'resource' ""as"" Identifier 'id' Annotations 'annotationList' 									{{ }}
	;
Dialect
	: ""dialect"" StringLiteral 'resource' 																				{{ }}
	;
Declaration
	: VarDeclaration
	| DefDeclaration
	;
VarDeclaration
	: ""var"" Identifier 'id' TypeOption 'type' Annotations 'annotationList' ( "":="" Expression 'initializer' ) ?  					{{  }}
	;
DefDeclaration
	: ""def"" Identifier 'id' TypeOption 'type' Annotations 'annotationList' ( ""="" Expression 'initializer'  ) ?					{{  }}
	;
Annotations
	: Empty
	| ""is"" AnnotationLabel 'ann' ( "","" AnnotationLabel 'ann' ) *  														{{ }}
	;
AnnotationLabel
	: <id> 'id'																	{{ Identifier }}
	| <id> 'requestPart'  TypeArguments 'typeArgList' AnnotationArgList  'argList' 
		( <id>  'requestPart' AnnotationArgList 'argList' )*  							{{ RequestPartsWithArguments }}		# Both type args and normal args
	|  <id> 'requestPart'  TypeArguments 'typeArgList'  								{{ RequestPartsWithArguments }}		# Just type args
	|  <id> 'requestPart'  AnnotationArgList  'argList' 
		( <id>  'requestPart' AnnotationArgList 'argList' )* 							{{ RequestPartsWithArguments }}		# Just normal args
	;
AnnotationArgList
	: ""("" Expression 'arg' ("",""  Expression 'arg' ) + "")"" 																	{{ ArgumentList }}
	| Numeral
	| String
	| SequenceConstructor
	| SpecialTerm
	| ""("" Expression 'expr' "")""  																						{ '2' }
	;
MethodDeclaration
	: ""once"" ? ""method"" MethodHeader 'header' ReturnTypeOption 'returns' Annotations 'annotationList' MethodBody ?  	{{ }}
	;
MethodBody
	: ""{"" ( Statement 'item' ( Ss '_' Statement  'item' ) * )  ? ""}"" 
	;
ClassDeclaration
	:  ""class"" MethodHeader 'header' ReturnTypeOption 'returns' Annotations 'annotationList' ObjectBody ?				{{ }}
	;
TraitDeclaration
	:  ""trait"" MethodHeader 'header' ReturnTypeOption 'returns' Annotations 'annotationList' ObjectBody ?				{{  }}
	;
MethodHeader
	: AssignmentMethodHeader
	| ParameterizedMethodHeader 
	| ParameterlessMethodHeader 
	| BinaryMethodHeader
	| UnaryMethodHeader 
	;
AssignmentMethodHeader
	: Identifier 'id' "":="" TypeParameterList 'typeParameterList' SingleMethodParameter  'parameter' 						{{ }}
	;
ParameterizedMethodHeader
	: <id> 'part' TypeParameterList 'typeParameterList' MethodParameterList 'parameterList' 
	( <id> 'part' MethodParameterList 'parameterList' ) * 																{{ }}
	;
ParameterlessMethodHeader
	: <id> 'part' TypeParameterList 'typeParameterList' 																{{ }}
	;
BinaryMethodHeader
	: <operator> 'operatorToken' TypeParameterList 'typeParameterList' SingleMethodParameter 'parameter' 				{{ }}
	;
UnaryMethodHeader
	: ""prefix"" <operator> 'operatorToken' TypeParameterList 'typeParameterList'											{{ }}
	;
MethodParameterList
	:  ""("" MethodParameter 'parameter' ("","" MethodParameter 'parameter' ) * "")"" 										{{ }}
	;
SingleMethodParameter
	:  ""("" MethodParameter 'parameter' "")"" 																			{{  }}
	;
ReturnTypeOption
	: Empty
	| <arrow> TypeExpression 		 																				{ '2' }
	;
MethodParameter
	: Identifier 'id' TypeOption 'type'																				{{ }}
	;
################
#        Requests       #
################

Request
	: ImplicitRequest 
	| SelfRequest
	| OuterRequest
	| DottedRequest
	;
ImplicitRequest
	: RequestPartsWithArguments 'request'																			{{ }}
#      the case of an implicit request without arguments is covered by ""Identifier""
	;
SelfRequest
	: <selfDot> RequestPart 'request' 																				{{ }}
	;
OuterRequest
	: <outerDot> + RequestPart 'request' 																			{{ }}
	;
DottedRequest
	: Term 'receiver' <dot> RequestPart 'request' 																	{{ }}
	;
AssignmentRequest
	: Term 'receiver' <dot> <id> 'id' "":="" Expression 'arg'  																{{ }}
	| <selfDot> <id> 'id' "":="" Expression 'arg'  																		{{ }}
	| <outerDot> + <id> 'id' "":="" Expression 'arg'  																		{{ }}
	;
RequestPart
	: RequestPartNoArguments 
	| RequestPartsWithArguments
	;
RequestPartNoArguments
	: <id> 'requestPart'																							{{ }}
	;
RequestPartsWithArguments 
	:  <id> 'requestPart'  TypeArguments 'typeArgList' ArgumentList  'argList' ( <id>  'requestPart' ArgumentList 'argList' )*  	{{ }}		# Both type args and normal args
	|  <id> 'requestPart'  TypeArguments 'typeArgList'  																{{ }}		# Just type args
	|  <id> 'requestPart'  ArgumentList  'argList' ( <id>  'requestPart' ArgumentList 'argList' )* 								{{ }}		# Just normal args
	;
ArgumentList
	: DelimitedTerm 'arg' 																							{{ }}
	| ""("" Expression 'arg' ("",""  Expression 'arg' ) + "")""  																	{{ }}
	;
UnaryRequest
	: <operator> 'op' TypeArguments 'typeArgList' ? Term 'receiver' 													{{  }}
	;
BinaryRequest
	: Factor 'receiver'  (<operator> 'op' TypeArguments 'typeArgList' ? Factor 'arg')+  									{{  }}
	;

#########################
#          Other Expressions              #
#########################

Block
	# this is written as two alternatives, rather than making the BlockParameterList optional,
	# because the latter creates a shift-reduce conflict that SmaCC can't resolve.
	: ""{"" BlockParameterList  'parameterList' <arrow> Ss '_' ? (Statement 'item' ( Ss '_' Statement  'item' ) *  ) ? ""}""  			{{ }}
	| ""{"" ( Statement 'item' ( Ss '_' Statement  'item' ) *  ) ? ""}""  															{{ }}
	;
BlockParameterList
	: BlockParameter 'parameter' ( "","" BlockParameter 'parameter' ) *													{{ }}
	;
BlockParameter
	:  Identifier 'id' PatternOption 'pattern'  																			{{ }}
	| NonIdExpression 'pattern' 																					{{ }}
	;
PatternOption
	: Empty
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
	| UnknownType
	| SelfType
	| Request
	| Ellipsis
	;
Ellipsis
	: ""...""																									{{ }}
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
	| ""("" Expression 'expr' "")""  																					{ '2' }
	;
SpecialTerm
	: Self  
	| Outer
	| Boolean
	;
Outer
	: <outer>																								{{ }}
	| <outerDot>+ <outer>																						{{ }}
	;
Self
	: <self>																									{{ }}
	;
Boolean
	: ""true""																									{{ }}
	| ""false""																									{{ }}
	;
Identifier
	: <id> 'id' 																								{{ }}
	;
Numeral
	: <decimalNumeral> 																						{{ DecimalNumeral }}
	| <baseExponentNumeral> 																				{{ BaseExponentNumeral }}
	| <explicitRadixNumeral> 																				{{ ExplicitRadixNumeral }}
	;
SequenceConstructor
	: ""["" ""]""																							{{ }}
	| ""["" Expression 'element' ("","" Expression 'element' ) * ""]""										{{ }}
	;
String
	: StringLiteral
	| StringConstructor
	| UninterpretedString
	;	
StringLiteral
	: StartString '_' <dquote> 'openQuote' <stringSegment> 'chars' ? RetDefault '_' <dquote> 'closeQuote' 			{{ }}
	;
StringConstructor
	: StartString '_' <dquote> 'openQuote' 
		<stringSegment> 'stringSegment' ? 
		( StartInterp  '_' ""{"" Expression 'interpolation' StartString ""}"" <stringSegment> 'stringSegment' ? ) + 
		RetDefault '_'  <dquote> 'closeQuote' 																	{{ }}
	;
UninterpretedString
	: StartUninterp '_' ""‹"" 'openQuote' <uninterpretedString> 'chars' ? RetDefault '_' ""›"" 'closeQuote'  					{{ StringLiteral }}
	;

#######################
#    Object Constructors    #
#######################

ObjectConstructor
	: ""object"" Annotations 'annotationList'  ObjectBody									 						{{ }}
	;
ObjectBody
	: ""{"" ( ObjectItem 'item' ( Ss '_' ObjectItem 'item' ) *  ) ? ""}""
	;
ObjectItem
	: Statement
	| MethodDeclaration
	| TypeDeclaration
	| ClassDeclaration
	| TraitDeclaration
	| UseStatement
	| InheritStatement
	;
UseStatement
	: ""use"" Expression 'superExpr' (ReuseModifier 'modifier') * 													{{  }}
	;
InheritStatement
	: ""inherit"" Expression 'superExpr' (ReuseModifier 'modifier') * 													{{  }}
	;
ReuseModifier
	: ExcludeClause
	| AliasClause
	;
ExcludeClause
	: ""exclude"" MethodHeader 'method' 																		{{ }}
	;
AliasClause
	: ""alias"" MethodHeader 'newMethod' ""="" MethodHeader 'oldMethod' 											{{ }}
	;
	
#######################
#                 Types                     #	
#######################

Type
	:  UnknownType
	| SelfType
	| Interface
	| Identifier 'id' TypeArguments 'typeArgList' ?														{{  }}
	| Type 'receiver' <dot> RequestPartNoArguments 'request' TypeArguments 'typeArgList' ?  				{{  }}
	| ""("" TypeExpression "")""																			{{  }}
	;
TypeDeclaration
	: ""type"" Identifier 'id' TypeParameterList 'typeParameterList' Annotations  'annotationList' ""="" 
				TypeExpression 'value'																{{ }}
	| ""type"" Identifier 'id' TypeParameterList 'typeParameterList' Annotations  'annotationList' ""="" 
				InterfaceLiteral 'value'																{{ }}
				# special case of bare interface literal without  reserved word
	;
TypeOption
	: Empty
	| "":"" TypeExpression																				{ '2' }
	;
TypeParameterList
	: Empty
	| <openTP> TypeParameter 'parameter' ( "","" '_' TypeParameter 'parameter' ) * Where 'where' <closeTP>   	{{  }}
	;
TypeParameter
	: Identifier 'id' 																					{{  }}
	;
TypeExpression
	: Type 'term' (<typeOperator> 'op' TypeArguments 'typeArgList' ? Type 'arg') *  							{{ }}
	;
TypeArguments
	: <openTP> Type 'typeArg' ("","" Type 'typeArg') * <closeTP>   											{{ }}
	;
Signature
	: MethodHeader 'header' ReturnTypeOption 'returns'  												{{ }}
	;
Interface
	:  ""interface"" InterfaceLiteral																		{{ InterfaceLiteral }}
	;
InterfaceLiteral
	:  ""{"" ""}""																							{{ }}
	|  ""{"" Signature 'method'  ( Ss '_' Signature 'method' ) * ""}""												{{ }}	
	; 
UnknownType
	: ""Unknown""																						{{ }}
	;
SelfType
	: ""Self""																							{{ }}
	;
Where
	: Empty
	| ""where"" WhereCondition 'condition' ("","" WhereCondition 'condition') *								{{ }}
	;
WhereCondition
	: <id> <typeRelation> Type	 'type'																	{{ }}
	; 
Empty																
	:
	;
StartString: { self state: #string . ^ nil} ;
StartUninterp: { self state: #uninterpString . ^ nil } ;
RetDefault: { self state: #default . ^ nil } ;
StartInterp: { self state: #default.  scanner tallyLeftBrace. ^ nil } ;"