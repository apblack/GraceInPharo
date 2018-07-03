initialization
initialize
	| grammarSource |
	grammarSource := ReadWriteStream on: String new.
	(GraceParser class >> #definitionComment) ast comments do: [ :e | 
		grammarSource nextPutAll: e contents asUncommentedCode ].
	grammarSource reset.
	grammar := SmaCCGrammarParser parseStream: grammarSource.