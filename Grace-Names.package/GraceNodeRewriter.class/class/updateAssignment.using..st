request rewriting
updateAssignment: anAssignment using: aResolvedVariable
	| newNode request |
	"aResolvedVariable could be a temporary variable"
	aResolvedVariable definition isMethod
		ifFalse: [ ^ self ].
	request := self buildRequestFromAssignment: anAssignment.
	newNode := self
		generateOneselfRequestOf: request
		from: anAssignment
		objectsOut: aResolvedVariable objectsUp.
	anAssignment replaceWith: newNode.
	^ newNode