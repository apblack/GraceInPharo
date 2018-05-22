scope creation
createScope: ScopeClass in: aNode
	| newScope enclosingObjectScope |
	newScope := ScopeClass new.
	newScope
		outerScope: aNode parent scope;
		node: aNode.
	aNode scope: newScope.
	newScope isObjectScope ifTrue: [ 
		enclosingObjectScope := newScope enclosingObjectScope.
		enclosingObjectScope isTheEmptyScope ifFalse: [ 
			self addOuterBindingFor: enclosingObjectScope in: newScope ] ].
	^ newScope