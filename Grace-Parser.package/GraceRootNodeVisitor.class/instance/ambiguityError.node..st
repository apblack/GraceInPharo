error handling
ambiguityError: defs node: aGraceIdentifier
	| msg |
	msg := WriteStream on: String new.
	msg << 'The name ' << aGraceIdentifier name << ' is ambiguous; it might refer to '.
	(defs size = 2) ifTrue: [ 
		msg << 'either the '.
		defs do: [ :var | 
				msg << var reuseString.
				msg << var definition kind << ' declared on '.
				msg << var definition rangeLongPrintString ] 
			separatedBy: [  msg << ' or the ' ]
	] ifFalse: [  ].
	^ GraceAmbiguityError new
		tag: aGraceIdentifier;
		messageText: msg contents;
		signal