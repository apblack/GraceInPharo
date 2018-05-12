shadowing check
reportShadowingErrors
	names keysAndValuesDo: [ :name :defn | 
		(outerScope lookup: name ifAbsent: [ ]) ifNotNil: [ :outerDefn | 
			self error: defn shadows: outerDefn ]
	]
		