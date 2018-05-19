checks
checkNodeHierarchy
	| grammar hierarchyDirectives resultTree reports |
	grammar := (GraceParser class >> #definitionComment) sourceCode readStream.
	hierarchyDirectives := ReadWriteStream on: String new.

	[ grammar atEnd ] whileFalse: [ | line |
		line := grammar upToAny: { Character lf. Character cr }.
		(line beginsWith: '%hierarchy') ifTrue: [ 
			hierarchyDirectives nextPutAll: line; cr.
			(line includes: $;) ifFalse: [ 
				hierarchyDirectives nextPutAll: (grammar upTo: $;); nextPut: $; ; cr 
			]
		]
	].

	hierarchyDirectives reset.

	resultTree := HierarchyParser parseStream: hierarchyDirectives.
	self assert: resultTree class equals: HCheckerHierarchyNode.
	reports := ValidatorVisitor new visitRoot: resultTree.
	reports ifNotEmpty: [ reports inspect ].
	self assert: reports isEmpty description: 'Some node classes have the wrong superclasses'