class initialization
initialize
	| grammarSource |
	grammarSource := ReadWriteStream on: String new.
	(GraceParser class >> #definitionComment) ast comments do: [ :e | 
		grammarSource nextPutAll: e contents asUncommentedCode ].
	grammarSource reset.
	grammar := SmaCCGrammarParser parseStream: grammarSource.
	productions := grammar rules select: [ :each | each isKindOf: GrammarProductionRuleNode ].
	nonTerminalsDerivingEmpty := #().			"to break a circularity"
	nonTerminalsDerivingEmpty := productions 
			select: [ :each | each rhs printString isEmpty ] 
			thenCollect: [ :each | each lhs name ].
	nonTerminalsDerivingEmpty remove: 'Empty' ifAbsent: [ ] 
			"so that we can use 'Empty' to mark empty productions explicitly"