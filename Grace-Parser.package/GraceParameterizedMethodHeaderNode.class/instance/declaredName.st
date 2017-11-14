naming
declaredName
	^ String streamContents: [ :s |
		 parts keysAndValuesDo: [ :i :part | 
			s << part name << '(_'.
			(parameterLists at: i) size - 1 timesRepeat: [  s << ',_' ].
			s << ')' ]
	]