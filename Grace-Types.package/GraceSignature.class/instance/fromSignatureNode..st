instance initialization
fromSignatureNode: aNode
	methodName := aNode declaredName.
	parameters := aNode parameters collect: [ :each | each declaredType ].
	typeParameters := aNode typeParameters 
								ifNil: [ #() ] 
								ifNotNil: [ :tp | tp parameters collect: [ :each | each name ] ].
	result := aNode returnTypeValue.
	self assert: result isNotNil