*Grace-Types
typeValue
	"typeValue unwinds this type definition exactly once.  Any references into this variable in
	the resulting type are NOT replaced by the type that they name, since this would lead to infinite
	regress."
	^ typeValue ifNil: [ 
		typeValue :=  GraceBuildType from: definingParseNode value typeName: name]