line handling
checkAndRecordIndentStatus
	currentCharacter = Character tab ifTrue: [ ^ self lexicalError: 'Please indent with spaces, not tabs' ].
	braceChange := currentLineBraceDepth - priorLineBraceDepth.
	currentCharacter = $} ifTrue: [ braceChange := braceChange - 1 ].
	currentLineIndent := self calculateCurrentIndent 