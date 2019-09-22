class generation
generateVariableDeclarationsOnto: aToGraceVisitor 
	| names |
	names := classBeingTranslated instVarNames.
	names do: [ :n |
		aToGraceVisitor << 'var ' << (RBVariableNode named: n) nameForGrace.
		aToGraceVisitor newline
	]
	