instance creation
from: aTypeNode
	typeName := aTypeNode typeName.
	aTypeNode methods do: [ :each | 	| mt |
		mt := GraceSignature fromSignature: each.
		methodDict at: mt name put: mt 
	]