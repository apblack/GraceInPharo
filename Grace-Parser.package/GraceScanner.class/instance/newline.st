token-actions
newline
	"a newline has been matched (including the spaces that follow it).
	Depending on the state of the scanner, classify it as <whitespace> (when 
	the following line is a continuation line) or a real <newline> token."

	self checkAndRecordIndentStatus.
	self isLineEmpty ifTrue: [ ^ self whitespace ].
	self isIndentationChangeOne ifTrue: [ self lexicalError: 'a change of indentation of 1 is not permitted' ].
	self terminateContinuationIfNecessary.
	self isContinuationLine ifTrue: [ 
			self recordContinuationStatus.
			self saveDataForPriorLine.
			^ self whitespace ].
	self isBlockStart ifTrue: [ 
		self recordNewIndentation 
	] ifFalse: [ 
		self isBlockEnd ifTrue: [ 
			self checkIndentationReset 
			] ifFalse: [ self checkConstantIndent ]
	].
	self saveDataForPriorLine.
	^ (self priorLineEndsWithOpenBracket or: [self currentLineStartsWithCloseBracket])
			ifTrue: [ self whitespace ]
			ifFalse: [ self createTokenFor: Character cr asString ]