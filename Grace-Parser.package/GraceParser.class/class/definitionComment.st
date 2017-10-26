generated
definitionComment
"%unicode ;
%id <comment> <error> <newline> ;

### State-specific token rules ###

%states string uninterpString;

string <h> : [0-9a-fA-F] ;
string <stringSegment> : ( \\[nt\{\}\""rl_\\] | \\u<h><h><h><h> | \\U<h><h><h><h><h><h> | \xA0 
					| [^\""\{\\\x00-\x09\x0B\x0C] ) + ;  # \x0C\x0E–\x1F\x7F
uninterpString <uninterpretedString> : [^›]+ ;

### Lexical token rules  ###

<whitespace>:  ( \x20 | \xA0 ) + ;
<comment>: // [^\r\n\x2028] * ;
<newline>:  ( \r | \n |  \r\n  | \x2028 ) <whitespace> ? ;
<error>: [\x00-\x09\x0b\x0c\x0e–\x1F\x7f] ;
<dot>: \. ;
<openTP>: ⟦ | \[\[ ;
<closeTP>: ⟧ | \]\] ;
<outer>: outer ;
<outerDot>: <outer> <whitespace>? <dot> ;
<self>: self ;
<selfDot> : <self> <whitespace>? <dot> ;
<name> :  [a-zA-Z_æ] [a-zA-Zæ0-9_'] *;				# and all the other non-ascii letters
<decimalNumeral> :  [0-9]+ ( [.][0-9]+ )? ;
<baseExponentNumeral> : <decimalNumeral> [eE][\+\-]?[0-9]+ ;
<basedRadixNumeral>: [0-9]+x[0-9A-Za-z]+ ;
<arrow>:  -> | → ;
<dquote>:  [""] ;
<elipsis>: \.\.\. ;
<operator>: [!\?@#%^&\|~=\+\-\*/\\><:\.\$\x22C5≤≥]+ ;   # or any other unicode mathematical operator symbol like \x22C5

#%right "":="" ;
%prefix Grace ;
%suffix Node ;
%root Root ;
%annotate_tokens ;
%start ArgumentList Block Declaration Expression Module Numeral Request Statement String Term Type;

#############
# Statements #
#############

Module
	: BlockBody 'body' {{ }}
	;
Sep
	: "";"" 										{{ }}
	| <comment> 'commentary' ? <newline>  	{{ }}
	;
Statement
	: Expression
	| Declaration
	| Assignment
	| Return
	| ReuseStatement
	| ImportStatement
	| DialectStatement
	| EmptyStatement
	| <error>
	;
Assignment
	: Identifier 'lhs' "":="" Expression 'rhs' {{ }}
	| AssignmentRequest 
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
EmptyStatement
	:  {{ }}
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
	| ""type"" Identifier 'id' ""="" InterfaceLiteral 'value' {{ }}
	;
TypePart
	: "":"" Type 'type' {{ Type }}
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
	: ""class"" MethodHeader 'header' ReturnTypePart 'returnType' ? (AnnotationPart 'annotation')?  ""{"" ObjectBody 'body' ""}"" {{ ClassDeclaration }}
	| ""trait"" MethodHeader 'header' ReturnTypePart 'returnType' ? (AnnotationPart 'annotation')?  ""{"" ObjectBody 'body' ""}"" {{ TraitDeclaration }}
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
	| <openTP> Identifier 'param' ( "","" '_' Identifier 'param' ) * <closeTP> {{ }}
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
	: Term 'target' <dot> <name> 'name' "":="" Expression 'arg'  {{ }}
	;
RequestPart
	: Identifier 
	| RequestWithArguments
	;
RequestWithArguments 
	:  <name> 'namePart'  TypeArguments 'typeArgs' ArgumentList  'argList' ( <name>  'namePart' ArgumentList 'argList' )*  {{ }}		# Both type args and normal args
	|  <name> 'namePart'  TypeArguments 'typeArgs'  {{ }}																		# Just type args
	|  <name> 'namePart'  ArgumentList  'argList' ( <name>  'namePart' ArgumentList 'argList' )*  {{ }}								# Junst normal args
	;
ArgumentList
	: DelimitedTerm 'arg' {{ }}
	| ""("" Expression 'arg' ("",""  Expression 'arg' ) + "")""  {{ }}
	;
UnaryRequest
	: <operator> 'op' TypeArguments 'typeArgs' ? Term 'receiver' {{  }}
	;
BinaryRequest
	: Factor 'receiver'  (<operator> 'op' TypeArguments 'typeArgs' ? Factor 'arg')+  {{  }}
	;

#########################
#          Other Expressions          #
#########################

Block
	# this is written as two alternatives, rather than making BlockParameters optional,
	# because the latter creates a shift-reduce conflict that SmaCC can't resolve.
	: ""{"" (BlockParameterList  'parameters' <arrow> ) BlockBody  'body' ""}""  {{ }}
	| ""{"" BlockBody 'body'  ""}""  {{ }}
	;
BlockParameterList
	: BlockParameter 'param'	{{ }}
	| BlockParameter 'param' ( "","" BlockParameter 'param' ) + {{ }}
	;
BlockParameter
	:  <name> 'parameter' PatternPart 'pattern' ?  {{ }}
	| NonIdExpression 'pattern' {{ }}
	;
PatternPart
	: "":"" Expression  { ^ '2' }
	;
BlockBody
	: Statement 'item' ( Sep '_' Statement  'item'  ) *  {{ }}		
	# which does not contain MethodsDeclarations or ReuseStatements, but that will be checked later.
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
	| ""("" Expression 'expr' "")""  {{ Expression }}
	;
SpecialTerm
	: ""self""  {{ }}
	| ""true"" {{ }}
	| ""false"" {{ }}
	| ""outer"" {{ }}
	;
Type
	:  Identifier 'id' TypeArguments 'typeargs' ? {{ }}
	| ""Unknown"" {{ }}
	| ""interface"" InterfaceLiteral  'interface' {{ }}
	| ""type"" InterfaceLiteral 'interface' 	   {{ }}		# for backward compatibility
	;
TypeArguments
	: <openTP> Type 'typeArg' ("","" Type 'typeArg') * <closeTP>   {{ }}
	;
Signature
	: MethodHeader 'methName' ReturnTypePart 'returnType'  {{ }}
	;
InterfaceLiteral
	:  ""{"" Sep '_' ? ""}""														{{ Interface }}
	|  ""{"" Signature 'method' ( Sep '_' Signature 'method' ) * Sep '_' ? ""}""		{{ Interface }}
	;
Identifier
	: <name> 'id' {{ }}
	;
Numeral
	: <decimalNumeral> {{ }}
	| <baseExponentNumeral> {{ }}
	| <basedRadixNumeral> {{ }}
	;
SequenceConstructor
	: ""["" ""]""	{{ }}
	| ""["" Expression 'element' ("","" Expression 'element' ) * ""]"" {{ }}
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