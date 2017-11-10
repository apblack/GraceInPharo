updating parser
recompileParser
	"Recompile the Grace Parser using SmaCC"
	
	| oldAlphabetSize parserCompiler aGrammar |
	oldAlphabetSize := SmaCCGrammar maximumCharacterValue.
	[ 
		SmaCCGrammar maximumCharacterValue: 255.
		parserCompiler := SmaCCGrammarCompiler new.
		parserCompiler
				category: 'Grace-Parser';
				buildDefinition: self parserDefinition;
				scannerClass: 'GraceScanner';
				parserClass: 'GraceParser'.
		aGrammar := parserCompiler grammar.
		aGrammar type: #LR1.
		parserCompiler createChanges.
		parserCompiler codeGenerator compileChanges
	] ensure: [ 
		SmaCCGrammar maximumCharacterValue: oldAlphabetSize 
	]
				