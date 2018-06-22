token-actions
newline
	"a newline has been matched (including the spaces that follow it).
	Depending on the state of the scanner, classify it as <whitespace> (when 
	the following line is a continuation line) or a real <newline> token."

	self checkAndRecordIndentStatus.
	self isLineEmpty
		ifTrue: [ ^ self whitespace ].
	self isIndentationChangeOne
		ifTrue: [ self lexicalError: 'a change of indentation of 1 is not permitted' ].
	self terminateContinuationIfNecessary.
	self isBlockStart ifTrue: [ 
			self recordNewIndentation.
			self saveDataForPriorLine.
			^ self priorLineEndsWithOpenBracket 
				ifTrue: [ self whitespace ]
				ifFalse: [ self createTokenFor: Character cr asString ] ].
	self isBlockEnd ifTrue: [ self checkIndentationReset ].
	self isContinuationLine ifTrue: [ 
			self recordContinuationStatus.
			self saveDataForPriorLine.
			^ self whitespace ].
	currentLineIndent < priorLineIndent ifTrue: [ self checkOutdent ].
	self saveDataForPriorLine.
	^ ( ')]}⟧' includes: currentCharacter) 
		ifTrue: [ self whitespace  ] 
		ifFalse: [ self createTokenFor: Character cr asString ]