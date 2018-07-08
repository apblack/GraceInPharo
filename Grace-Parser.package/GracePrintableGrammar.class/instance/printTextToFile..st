printing
printTextToFile: aFile
	aFile
		writeStreamDo: [ :out | 
			(self class productions sort: [ :a :b | a lhs symbolName value <= b lhs symbolName value ])
				do: [ :rule |   | name |
						name := rule name.
						(self class isEmptyNonTerminal: name) ifFalse: [ 
							out << name << ' ::= '.
							out << rule rhs printString.
							out cr ]
					]
		]