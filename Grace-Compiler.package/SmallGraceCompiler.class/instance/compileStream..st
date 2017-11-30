compiling
compileStream: aStream
	| parseTree treeWithScopes resolved |
	parseTree := GraceParser parseStream: aStream.
	treeWithScopes := GraceBuildScopesVisitor new acceptNode: parseTree.
	resolved := GraceDisambiguationVisitor new acceptNode: treeWithScopes.