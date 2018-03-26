generated
visitBinaryRequest: aBinaryRequest
	| result |
	result := aBinaryRequest receiver acceptVisitor: self.
	aBinaryRequest ops with: aBinaryRequest args do: [ :op :arg |
		result := GraceRequestAst 
						from: aBinaryRequest range 
						scope: aBinaryRequest scope
						receiver: result
						requestedName: op value , ':=(_)'
						arguments: (GraceListAst from: { arg acceptVisitor: self } ) ].
	^ result 