naming
requestedName
	| result |
	result := 'outer'.
	dotOuterTokens size timesRepeat: [  result := 'outer.' , result ].
	^ result
	
