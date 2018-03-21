compiling
compileString: theSource named: aName
	| parseTree treeWithScopes resolved |
	parseTree := GraceParser parseStream: theSource readStream named: aName.
	self assert: [ parseTree isKindOf: GraceModuleNode ].
	parseTree name: aName; compilationTime: DateAndTime now; completeSource: theSource.
	treeWithScopes := GraceBuildScopesVisitor new acceptNode: parseTree.
	treeWithScopes := GraceReuseVisitor new acceptNode: treeWithScopes.
	resolved := GraceDisambiguationVisitor new acceptNode: treeWithScopes.
	^ resolved