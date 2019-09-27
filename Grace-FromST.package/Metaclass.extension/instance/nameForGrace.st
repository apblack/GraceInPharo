*Grace-FromST
nameForGrace
	"Answer a String that is the name of the Grace version of this class"

	| n |
	thisClass ifNil: [ ^ 'someMetaclass' ].
	n := thisClass name asString uncapitalized, 'Factory'.
	(n beginsWith: 'grace') ifTrue: [ n := (n copyReplaceFrom: 1 to: 5 with: '') uncapitalized ].
	^ n