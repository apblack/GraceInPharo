line handling
checkAndRecordIndentStatus
	currentCharacter = Character tab ifTrue: [ ^ self lexicalError: 'Please indent with spaces, not tabs' ].
	braceChange := currentLineBraceDepth - priorLineBraceDepth.
	currentCharacter = $} ifTrue: [ braceChange := braceChange - 1 ].
		"when the next line starts with a close brace, pretend that it ended the current line"
	currentLineIndent := self calculateCurrentIndent 