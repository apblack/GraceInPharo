line handling
isBlockStart
	^ unmatchedLeftBraces > 0 and: [ currentCharacter ~= $} ]