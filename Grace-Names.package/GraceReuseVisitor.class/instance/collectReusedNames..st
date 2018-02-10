scope building
collectReusedNames: node
	"this method is based on the algorithm used by minigrace; node is an Object or Class"
	| nodeScope |
	nodeScope := node scope.
   nodeScope areReusedNamesCompleted ifTrue: [ ^ self ].
   nodeScope areReusedNamesInProgress ifTrue: [ 
		self  reuseError: 'cyclic inheritance or trait use' node: node ].
   nodeScope markReusedNamesAsInProgress.
	self gatherInheritedNames: node.
	self gatherUsedNames: node.
   nodeScope markReusedNamesAsCompleted
