constants
reservedWords
	"reserved words that cannot be used as an <id>, or as a part of a method name"
	
	self flag: 'where should be added to this list'.
	^ #('Self' 'Unknown' 'alias' 'as' 'class' 'def' 'dialect' 'exclude' 'false' 'import' 'inherit' 'interface' 'is' 'method' 'object' 'outer' 'prefix' 'return' 'self' 'trait' 'true' 'type' 'use' 'var')