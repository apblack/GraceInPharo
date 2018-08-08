error handling
ambiguityError: defs node: aNode
	"Signals an ambiguity error.  Does not return"
	| msg |
	msg := WriteStream on: String new.
	msg << 'the name `' << aNode requestedName << '` is ambiguous; it might refer to '.
	msg << 'either the '.
	defs do: [ :var |  msg << var resolutionString ] 
		separatedBy: [  msg << ', or the ' ].
	^ GraceAmbiguityError signal: msg contents withTag: aNode