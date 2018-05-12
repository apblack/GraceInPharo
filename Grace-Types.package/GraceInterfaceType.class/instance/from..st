instance creation
from: aTypeNode
	typeName := aTypeNode typeName.
	aTypeNode methods do: [ :each | 	| sig |
		sig := GraceSignature fromSignature: each.
		methodDict at: sig methodName put: sig 
	]