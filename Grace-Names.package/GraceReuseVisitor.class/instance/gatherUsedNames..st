scope building
gatherUsedNames: node
	"this method is based on the algorithm used by gathreReusedNames; node is an Object or Class"
	| reuseNodes objScope parentScope |
	reuseNodes := node items select: [ :each | each isReuseStatement ].
	objScope := node scope.
	reuseNodes do: [ :each |
		parentScope := each superExpr objectScopeInScope: objScope.
		objScope addLocalAndReusedFrom: parentScope.
		each modifiers do: [ :modifier | modifier applyTo: objScope for: self ].
	]