scope creation
createScope: ScopeClass in: aNode
	| newScope enclosingObjectScope |
	newScope := ScopeClass new.
	newScope 
		outerScope: aNode parent scope;
		node: aNode.
	aNode scope: newScope.
	(ScopeClass = GraceObjectScope) ifTrue: [ 
		enclosingObjectScope := newScope enclosingObjectScope.
		(enclosingObjectScope == GraceEmptyScope instance) ifFalse: [
			newScope add: ((GracePseudovariable fromParseTreeNode: enclosingObjectScope node)
									attributeScope: enclosingObjectScope)
			  			withName: 'outer' ] ].
	^ newScope