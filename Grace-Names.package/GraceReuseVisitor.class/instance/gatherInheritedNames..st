scope building
gatherInheritedNames: node
	"node represents a class, objectConstructor, or module; 
	add to node's scope the names obtained from its 'inherit' statements"
	| inhNodes objScope superScope inhNode modifiedSuper |
	inhNodes := node items select: [ :each | each isInheritStatement ].
	inhNodes size > 1 ifTrue: [ ^ self reuseError: 'there can be at most one inherit statement per object constructor' node: inhNodes second ].
	objScope := node scope.
	inhNodes 
		ifEmpty: [ 
			inhNode := nil.
			superScope := node defaultInheritedScope.
			objScope addLocalAndReusedFrom: superScope ]
		ifNotEmpty: [ 
			inhNode := inhNodes first.
			GraceDisambiguationVisitor new acceptNode: inhNode.
			modifiedSuper := self applyModifiersOf: inhNode.
			objScope addLocalAndReusedFrom: modifiedSuper]

	