private
createTokenFor: aString
	| token |
	token := super createTokenFor: aString.
	token scanner: self.
	self class showTokensOnTranscript ifTrue: [
		Transcript show: token printString; cr
	].
	^ token