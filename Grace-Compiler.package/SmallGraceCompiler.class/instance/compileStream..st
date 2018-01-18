compiling
compileStream: aStream
	| parseTree treeWithScopes resolved checked |
	parseTree := GraceParser parseStream: aStream.
	treeWithScopes := GraceBuildScopesVisitor new acceptNode: parseTree.
	resolved := GraceDisambiguationVisitor new acceptNode: treeWithScopes.
	checked := GraceCheckingVisitor new acceptNode: resolved.