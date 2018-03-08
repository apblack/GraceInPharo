adding local
add: aVariable withName: aName
	| priorDeclaration |

	priorDeclaration := names at: aName ifAbsent: [
		names at: aName put: aVariable.
		^ aVariable ].
	^ self redeclarationError: 
				('sorry, you can''t declare `{1}` as a {2}, because it''s already declared as a {3} on {4}, which is in the same scope; use a different name' 
					format: { aName . aVariable kind . priorDeclaration kind . priorDeclaration rangeLongPrintString } )
			 variable: aVariable
	