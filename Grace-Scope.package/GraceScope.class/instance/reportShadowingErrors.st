shadowing check
reportShadowingErrors
	names keysAndValuesDo: [ :name :defn | 
		outerScope lookup: name 
			ifAbsent: [ ] 
			ifPresent: [ :outerDefn | self error: defn shadows: outerDefn ]
	]
		