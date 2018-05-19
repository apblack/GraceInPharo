instance initialization
initializeFromNode: aNode
	methodName := aNode declaredName.
	parameters := aNode parameters collect: [ :each | each declaredType ].
	typeParameters := aNode typeParameters 
								ifNil: [ #() ] 
								ifNotNil: [ :tp | tp parameters ].
	result := aNode returnType.
	self assert: result isNotNil