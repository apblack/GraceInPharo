*Grace-Types
typeValue
	^ typeValue ifNil: [ 
		typeValue :=  GraceBuildType from: definingNode value typeName: name]