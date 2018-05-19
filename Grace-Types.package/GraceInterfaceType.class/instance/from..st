instance creation
from: aTypeNode
	typeName := aTypeNode typeName.
	aTypeNode methods do: [ :each | 	| sig |
		sig := GraceSignature fromParseTreeNode: each.
		methodDict at: sig methodName put: sig 
	]