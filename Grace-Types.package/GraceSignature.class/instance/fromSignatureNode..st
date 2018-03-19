instance initialization
fromSignatureNode: aNode
	name := aNode declaredName.
	parameters := aNode parameters collect: [ :each | each typeValue ].
	result := aNode returnTypeValue.
	self assert: result isNotNil