*Grace-Types
returnTypeValue
	"answers the actual type object (not the parse tree node) that represents my return type."
	^ returnType
			ifNotNil: [ (GraceBuildType from: returnType) ifNil: [self halt] ifNotNil: [ :val | val ] ]
			ifNil: [ GraceUnknownType instance ]