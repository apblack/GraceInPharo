*Grace-Names
objectScopeFor: aNode
	self variable canBeOrginOfSuperExpression ifFalse: [
		^ GraceReuseError 
				signal: 'sorry, you can''t inherit through ', self name
				node: aNode ].
	^ self variable attributeScope