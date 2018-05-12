accessing
outerScope: aScope
	"set my outerScope.  Also, add a PseudoVariable to my dictionary at the name `outer` that references the enclosing object scope."
	
	| enclosingObjectScope |
	super outerScope: aScope.
	enclosingObjectScope := self enclosingObjectScope.
	(enclosingObjectScope == GraceEmptyScope instance) ifFalse: [
		self add: ((GracePseudovariable fromParseTreeNode: enclosingObjectScope node)
						attributeScope: enclosingObjectScope)
			  withName: 'outer' ].
	^ self