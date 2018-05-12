request rewriting
updateImplicitRequest: anImplicitRequestNode using: aResolvedVariable
	| newNode request |
	"aResolvedVariable could be a type with a typeParameter"
	aResolvedVariable definition isMethodOrParameterizedType 
		ifFalse: [ ^ anImplicitRequestNode ].
	request := anImplicitRequestNode request copy.
	newNode := self
		generateOneselfRequestOf: request
		from: anImplicitRequestNode
		objectsOut: aResolvedVariable objectsUp.
	anImplicitRequestNode replaceWith: newNode.
	^ newNode