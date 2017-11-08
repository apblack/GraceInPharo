line handling
isLineEmpty
	"answers true if the line that we just started is empty.
	A line containing nothing but a comment is treated as empty,
	so that comments do not reset the indentation."
	
	(newlineChars includes: currentCharacter) ifTrue: [ ^ true ].
	($/ ~= currentCharacter) ifTrue: [ ^ false ].
	^ stream explore: [ :s | 
		s next.
		($/ = s next)
	]