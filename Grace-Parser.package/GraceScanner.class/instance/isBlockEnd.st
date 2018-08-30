line handling
isBlockEnd
	"if we are ending a block that was begun on the current line, we don't
	consider this to be a block ending, because there are no indented lines,
	and no entry on the indentStack to remove"
	((unmatchedLeftBraces > 0) and: [ currentCharacter ~= $} ]) ifTrue: [ ^false ].
	^ braceChange < 0 