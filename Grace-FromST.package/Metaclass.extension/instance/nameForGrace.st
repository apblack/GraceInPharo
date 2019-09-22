*Grace-FromST
nameForGrace
	"Answer a String that is the name of the Grace version of this class"

	^ thisClass isNil
		ifTrue: [ 'someMetaclass' ]
		ifFalse: [ thisClass name asString uncapitalized, 'Factory' ]