token-actions
newline
	"a newline has been matched (including the spaces that follow it).
	Depending on the state of the scanner, classify it as <whitespace> (when 
	the following line is a continuation line) or a real <newline> token."

	| lineStart |
	lineStart := self positionOfLineStart.
	lineStarts addLast: lineStart.
	currentIndent := self position + 1 - lineStart.
	self isContinuationLine
		ifTrue: [ 
			self resetsIndentation ifTrue: [ indentStack addLast: currentIndent ].
			priorLineBraceDepth := braceDepth.
			priorLineIndent := currentIndent.
			^ self whitespace ].
	self handleIndentationOnError: [ :message |
		matchActions := Array with: self errorId.
		^ self createTokenFor: message ].
	priorLineBraceDepth := braceDepth.
	priorLineIndent := currentIndent.
	matchActions := { self newlineId }.
	^ self createTokenFor: Character cr asString.