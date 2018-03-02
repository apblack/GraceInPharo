scope building
gatherUsedNames: node
	"node represents a class, objectConstructor, or module;  add to node's scope the 
	names obtained from its 'use' statements, except for names obtained from 'graceObject'"

	| useNodes modifiedTraits |
	useNodes := node items select: [ :each | each isUseStatement ].
	useNodes do: [ :useNode | self disambiguateSuperExpressionIn: useNode ].
	"this rewrites `use x` to `use outer.x`, etc., as appropriate"
	modifiedTraits := useNodes
		collect: [ :useNode | self applyUseModifiersOf: useNode ].
	self combineTraits: modifiedTraits into: node scope