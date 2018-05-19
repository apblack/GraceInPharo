printing
printOn: s
	s << 'signature ' << methodName.
	(self hasParameters) ifTrue: [ 
		s << '⟦'.
		self parameters do: [ :each | s << each name ] separatedBy: [ s << ', ' ].
		s << '⟧'
	]