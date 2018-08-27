output
emitEscapedString: aString
	| charsNeedingEscape |
	(aString includes: Character cr) ifTrue: [ 
		self << '‹' << aString << '›'.
		^ self ].
	charsNeedingEscape := '"\{}'.
	self << '"'.
	aString do: [ :ch |
		(charsNeedingEscape includes: ch) ifTrue: [ self << '\' ].
		self << ch
	].
	self << '"'