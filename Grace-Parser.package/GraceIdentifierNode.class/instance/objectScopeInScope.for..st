accessing inner scopes
objectScopeInScope: aGraceObjectScope for: aNode
	self definingOccurence canBeOrginOfSuperExpression ifFalse: [
		^ GraceReuseError 
				signal: 'Sorry, you can''t inherit through ', self declaredName
				withTag: aNode ].
	^ self definingOccurence attributeScope