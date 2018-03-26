types
typeValue
	"answers the actual type object, not the parse tree node"

	^ type
		ifNil: [ GraceUnknownType instance ]
		ifNotNil: [ GraceBuildType from: type]