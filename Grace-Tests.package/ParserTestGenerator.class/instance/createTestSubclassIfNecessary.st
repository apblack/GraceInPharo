initialization
createTestSubclassIfNecessary

	(Smalltalk globals includesKey: #GraceParserGeneratedTests) ifFalse: [ 
		 GraceParserTests subclass: #GraceParserGeneratedTests
				instanceVariableNames: ''
				classVariableNames: ''
				package: 'GraceTests'].