error handling
ambiguityError: defs node: aNode
	"Signals an ambiguity error.  Does not return"
	| msg |
	msg := WriteStream on: String new.
	msg << 'the name `' << aNode requestedName << '` is ambiguous; it might refer to '.
	(defs size = 2) ifTrue: [ 
		msg << 'either the '.
		defs do: [ :var | 
				msg << var reuseString.
				msg << var definition kind << ' declared on '.
				msg << var definition lineRangePrintString << ' of '.
				msg << var moduleName ] 
			separatedBy: [  msg << ', or the ' ]
	] ifFalse: [  ].
	^ GraceAmbiguityError signal: msg contents withTag: aNode