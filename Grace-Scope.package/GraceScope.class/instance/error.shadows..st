shadowing check
error: innerDefn shadows: outerDefn
	GraceNamingError 
		signal: ( 'You can''t use `{1}` as the name of a {2}, because `{1}` is declared as a {3} on {4} in a surrounding scope; use a different name'
			format: {
				innerDefn declaredName.
				innerDefn kind.
				outerDefn kind.
				outerDefn lineRangePrintString } )
		withTag: innerDefn definingParseNode 