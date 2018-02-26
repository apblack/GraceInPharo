compiling
compileStream: aStream named: aName
	| parseTree treeWithScopes resolved checked theSource |
	theSource := aStream contents.
	parseTree := GraceParser parseStream: aStream named: aName.
	self assert: [ parseTree isKindOf: GraceModuleNode ].
	parseTree name: aName; compilationTime: DateAndTime now; sourceString: theSource.
	treeWithScopes := GraceBuildScopesVisitor new acceptNode: parseTree.
	treeWithScopes := GraceReuseVisitor new acceptNode: treeWithScopes.
	resolved := GraceDisambiguationVisitor new acceptNode: treeWithScopes.
	checked := GraceCheckingVisitor new acceptNode: resolved.
	^ checked