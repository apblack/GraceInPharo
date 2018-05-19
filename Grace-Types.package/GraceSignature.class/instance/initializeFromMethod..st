instance initialization
initializeFromMethod: aMethod 
	parameters := aMethod parameters collect: [ :each | each declaredType ].
	result := GraceBuildType from: aMethod definingParseNode returns.
	methodName := aMethod name.
	typeParameters := aMethod definingParseNode typeParameters 
								ifNil: [ #() ] 
								ifNotNil: [ :tp | tp parameters ].
	