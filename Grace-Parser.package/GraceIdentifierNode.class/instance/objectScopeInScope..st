accessing inner scopes
objectScopeInScope: aGraceObjectScope 
	| node |
	node := self definingOccurence definingNode.
	node isModule ifFalse: [
		^ GraceReuseError 
				signal: 'Sorry, you can''t inherit through ' , node description
				withTag: node ].
	^ node initializer scope