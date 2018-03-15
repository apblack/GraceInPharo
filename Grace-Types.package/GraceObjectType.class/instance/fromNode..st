instance creation
fromNode: aTypeNode
	methodDict := Dictionary new.
	aTypeNode methods do: [ :each | 	| mt |
		mt := GraceMethodType fromSignature: each.
		methodDict at: mt name put: mt 
	]