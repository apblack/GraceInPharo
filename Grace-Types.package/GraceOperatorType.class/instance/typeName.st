naming
typeName
	
	^ typeName ifNil: [ String streamContents: [ :s |
		operands do: [ :each | s << each typeName ]	separatedBy: [ s << ' ' << self operatorSymbol << ' ' ] ]
	]