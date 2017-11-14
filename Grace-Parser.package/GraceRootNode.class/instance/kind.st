accessing
kind
	"answers the name of the syntactic unit represnted by this node.  So, if I am a 
	GraceArgumentListNode, answers 'argument list'"
	
	| nameStream |
	nameStream := (self className copyReplaceFrom: 1 to: 5 with: '') readStream.
	^ String streamContents: [ :s | | ch |
		s nextPut: nameStream next asLowercase.
		[ nameStream position < (nameStream size - 4) ] whileTrue: [ 
			ch := nameStream next.
			ch isUppercase ifTrue: [ ch := ch lowercase. s nextPut: $  ].
			s nextPut: ch 
		]
	]