printing
printTextToFile: aFile
	aFile
		writeStreamDo: [ :out | 
			grammar inspect.
			self halt.
			(grammar classDefinitions sort: [ :a :b | a name <= b name ])
				do: [ :def | 
					def productions isEmpty ifFalse: [ 
						out << def name << ' ::= '.
						def productions do: [ :each | out << each printString ]
								separatedBy: [ out cr; << '	| ' ].
						out cr ] ] ]