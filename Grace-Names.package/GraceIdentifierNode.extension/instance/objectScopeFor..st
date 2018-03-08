*Grace-Names
objectScopeFor: aNode
	self definingOccurence canBeOrginOfSuperExpression ifFalse: [
		^ GraceReuseError 
				signal: 'sorry, you can''t inherit through ', self name
				node: aNode ].
	^ self definingOccurence attributeScope