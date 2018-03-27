generated
definitionComment
"%unicode ;
%id <error> <id> <operator> <newline> <selfDot> <outerDot> <outer>;

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
default <basedRadixNumeral>: [0-9]+x[0-9A-Za-z]+ ;
default <arrow>:  -> | → ;
default string <dquote>:  [""] ;
default <operator>: [!!\?@#%^&\|~=≠\+÷\-\*/\\><:\.\$\x22C5≤≥]+ ;   # or any other unicode mathematical operator symbol like \x22C5
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
%hierarchy SomeParameters (BlockParameterList ParameterList SingleMethodParameter TypeParameterList) ;
%hierarchy Expression (Request Block Boolean Ellipsis Factor Term Identifier ObjectConstructor Numeral String Sequence Oneself Type) ;
%hierarchy Numeral (DecimalNumeral BaseExponentNumeral BasedRadixNumeral) ;
%hierarchy String (StringLiteral StringConstructor) ;
%hierarchy Statement (Expression Pragma Declaration Assignment Return ) ;
%hierarchy Oneself (Self Outer) ;
%hierarchy Request (ImplicitRequest ExplicitRequest) ;
%hierarchy RequestPart (RequestPartNoArguments RequestPartsWithArguments) ;
%hierarchy ExplicitRequest (OneselfRequest DottedRequest AssignmentRequest UnaryRequest BinaryRequest) ;
%hierarchy OneselfRequest (SelfRequest OuterRequest) ;
%hierarchy ObjectConstructor (Module) ;
%hierarchy ReuseStatement (UseStatement InheritStatement) ;
%hierarchy Type (Interface TypeExpression UnknownType SelfType) ;
%hierarchy Interface (InterfaceLiteral) ;
%hierarchy MethodHeader (AssignmentMethodHeader BinaryMethodHeader ParameterizedMethodHeader ParameterlessMethodHeader
 UnaryMethodHeader) ;
%start ArgumentList Block Declaration Expression MethodDeclaration Module Numeral ObjectItem Request Statement String Term Type ;

%attributes Root (scope) ;				# adds the instance variable scope to GraceRootNode, and thus to all of its subclasses 
%attributes Identifier (isDefinition variable) ;
%attributes Declaration (annotationNames variable) ;
%attributes Module (compilationTime name) ;
%attributes ObjectConstructor (declaredName variable) ;

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
	: ""import"" StringLiteral 'resource' ""as"" Identifier 'id' Annotations 'annotationList' 										{{ }}
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
	: ""var"" Identifier 'id' TypeOption 'type' Annotations 'annotationList' ( "":="" Expression 'initializer' ) ?  						{{  }}
	;
DefDeclaration
	: ""def"" Identifier 'id' TypeOption 'type' Annotations 'annotationList' ( ""="" Expression 'initializer'  ) ?						{{  }}
	;
Annotations
	:
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
	: ""once"" ? ""method"" MethodHeader 'header' ReturnTypeOption 'returnType' Annotations 'annotationList'  
		( ""{"" ( Statement 'item' ( Ss '_' Statement  'item' ) * Ss '_' ? ) ? ""}"" ) ?  											{{ }}
	;
ClassDeclaration
	:  ""class"" MethodHeader 'header' ReturnTypeOption 'returnType' Annotations 'annotationList' 
		( ""{"" ( ObjectItem 'item' ( Ss '_' ObjectItem 'item' ) * Ss '_' ?  ) ? ""}"" ) ?											{{  }}
	;
TraitDeclaration
	:  ""trait"" MethodHeader 'header' ReturnTypeOption 'returnType' Annotations 'annotationList' 
		( ""{"" ( ObjectItem 'item' ( Ss '_' ObjectItem 'item' ) * Ss '_' ?  ) ? ""}"" ) ?											{{  }}
	;
MethodHeader
	: AssignmentMethodHeader
	| ParameterizedMethodHeader 
	| ParameterlessMethodHeader 
	| BinaryMethodHeader
	| UnaryMethodHeader 
	;
AssignmentMethodHeader
	: Identifier 'id' "":="" TypeParameterList 'typeParameters' SingleMethodParameter  'parameter' 							{{ }}
	;
ParameterizedMethodHeader
	: <id> 'part' TypeParameterList 'typeParameters' MethodParameterList 'parameterList' 
	( <id> 'part' MethodParameterList 'parameterList' ) * 							{{ }}
	;
ParameterlessMethodHeader
	: <id> 'part' TypeParameterList 'typeParameters' 																	{{ }}
	;
BinaryMethodHeader
	: <operator> 'operatorToken' TypeParameterList 'typeParameters' SingleMethodParameter 'parameter' 				{{ }}
	;
UnaryMethodHeader
	: ""prefix"" <operator> 'operatorToken' TypeParameterList 'typeParameters'											{{ }}
	;
MethodParameterList
	:  ""("" MethodParameter 'parameter' ("","" MethodParameter 'parameter' ) * "")"" 										{{ }}
	;
SingleMethodParameter
	:  ""("" MethodParameter 'parameter' "")"" 																			{{  }}
	;
ReturnTypeOption
	: 
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
	:  <id> 'requestPart'  TypeArguments 'typeArgList' ArgumentList  'argList' ( <id>  'requestPart' ArgumentList 'argList' )*  		{{ }}		# Both type args and normal args
	|  <id> 'requestPart'  TypeArguments 'typeArgList'  																	{{ }}		# Just type args
	|  <id> 'requestPart'  ArgumentList  'argList' ( <id>  'requestPart' ArgumentList 'argList' )* 								{{ }}		# Just normal args
	;
ArgumentList
	: DelimitedTerm 'arg' 																							{{ }}
	| ""("" Expression 'arg' ("",""  Expression 'arg' ) + "")""  																	{{ }}
	;
UnaryRequest
	: <operator> 'op' TypeArguments 'typeArgList' ? Term 'receiver' 														{{  }}
	;
BinaryRequest
	: Factor 'receiver'  (<operator> 'op' TypeArguments 'typeArgList' ? Factor 'arg')+  										{{  }}
	;

#########################
#          Other Expressions              #
#########################

Block
	# this is written as two alternatives, rather than making the BlockParameterList optional,
	# because the latter creates a shift-reduce conflict that SmaCC can't resolve.
	: ""{"" Ss '_' ? BlockParameterList  'parameterList' <arrow> Ss '_' ? (Statement 'item' ( Ss '_' Statement  'item' ) * Ss '_' ?) ? ""}""  {{ }}
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
	: <outer> 'outer'																							{{ }}
	| <outerDot> 'outer' + <outer> 'outer'																		{{ }}
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
	: ""object"" Annotations 'annotationList'  ""{"" Ss '_' ? ObjectItem 'item' ( Ss '_' ObjectItem 'item' ) * ""}"" 					{{ }}
	| ""object"" Annotations 'annotationList' ""{"" Ss '_' ? ""}""																{{ }}
	;
ObjectItem
	: Statement
	| MethodDeclaration
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
	|  Interface
	| Identifier 'id' TypeArguments 'typeArgList' ?														{{  }}
	| Type 'receiver' <dot> RequestPartNoArguments 'request' TypeArguments 'typeArgList' ?  				{{  }}
	| ""("" TypeExpression "")""																			{{  }}
	;
TypeDeclaration
	: ""type"" Identifier 'id' TypeParameterList 'typeParameters' Annotations  'annotationList' ""="" 
				TypeExpression 'value' Where 'where'													{{ }}
	| ""type"" Identifier 'id' TypeParameterList 'typeParameters' Annotations  'annotationList' ""="" 
				InterfaceLiteral 'value' Where 'where'													{{ }}
				# special case of bare interface literal without  reserved word
	;
TypeOption
	:
	| "":"" TypeExpression																				{ '2' }
	;
TypeParameterList
	: 
	| <openTP> TypeParameter 'parameter' ( "","" '_' TypeParameter 'parameter' ) * <closeTP>   				{{  }}
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
	: MethodHeader 'header' ReturnTypeOption 'returnType'  											{{ }}
	;
Interface
	:  ""interface"" InterfaceLiteral																		{{ }}
	| ""type"" InterfaceLiteral																			{{ }} 	
		# type is allowed for backward compatibility
	;
InterfaceLiteral
	:  ""{"" Ss '_' ? ""}""																					{{ }}
	|  ""{"" Ss '_' ? Signature 'method' ( Ss '_' Signature 'method' ) * Ss '_' ? ""}""								{{ }}	
	; 
UnknownType
	: ""Unknown""																						{{ }}
	;
SelfType
	: ""Self""																							{{ }}
	;
Where
	:
	| ""where"" WhereCondition 'condition' ("","" WhereCondition 'condition') *								{{ }}
	;
WhereCondition
	: <id> <typeRelation> Type	 'type'																	{{ }}
	; 
StartString: { self state: #string . ^ nil} ;
StartUninterp: { self state: #uninterpString . ^ nil } ;
RetDefault: { self state: #default . ^ nil } ;
StartInterp: { self state: #default.  scanner incrementBraceDepth . ^ nil } ;"