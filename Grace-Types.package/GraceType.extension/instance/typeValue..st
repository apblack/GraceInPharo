*Grace-Types
typeValue: aTypeObject
	"sets the typeValue field, and returns the new value.  Makes the typeValue aware that it has a name"
	aTypeObject typeName: self typeName.
	^ typeValue := aTypeObject