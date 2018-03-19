instance creation
fromNode: aTypeNode
	methodDict := Dictionary new.
	typeName := aTypeNode typeName.
	aTypeNode methods do: [ :each | 	| mt |
		mt := GraceSignature fromSignature: each.
		methodDict at: mt name put: mt 
	]