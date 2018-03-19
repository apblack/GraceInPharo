adding
at: aName add: aValue
	"adds aValue to the set at key aName.  Returns the added value"
	| entry |
	entry := internalDict at: aName ifAbsentPut: [ IdentitySet new ].
	entry add: aValue.
	^ aValue