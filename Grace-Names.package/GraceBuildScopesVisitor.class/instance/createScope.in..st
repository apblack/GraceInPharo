scope creation
createScope: ScopeClass in: aNode
	| newScope |
	newScope := ScopeClass new.
	newScope 
		outerScope: aNode parent scope;
		node: aNode.
	aNode scope: newScope