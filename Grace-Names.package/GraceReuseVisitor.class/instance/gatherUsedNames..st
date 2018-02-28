scope building
gatherUsedNames: node
	"node represents a class, objectConstructor, or module; 
	add to node's scope the names obtained from its 'use' statements, 
	except for names obtained from 'graceObject'"
	
	| useNodes modifiedTraits |
	useNodes := node items select: [ :each | each isUseStatement ].
	useNodes do: [ :useNode | GraceDisambiguationVisitor new acceptNode: useNode]. 
		"this rewrites `use x` to `use outer.x`, etc., as appropriate"
	self flag: 'this is wrong!'.

	modifiedTraits := useNodes collect: [ :useNode |
		self applyModifiersOf: useNode ].
	node scope addLocalAndReusedFrom: (self combineTraits: modifiedTraits)