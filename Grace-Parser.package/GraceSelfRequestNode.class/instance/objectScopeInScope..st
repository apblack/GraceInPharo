accessing inner scopes
objectScopeInScope: aScope
	self enclosingObject isModule ifFalse: [ 
		^ GraceReuseError signal: 'Sorry, you can''t inherit from ' , self description ].
	^ self request objectScopeInScope: aScope
		