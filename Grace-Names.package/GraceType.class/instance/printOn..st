printing
printOn: s
	s << 'type ' << name.
	(self hasParameters) ifTrue: [ 
		s << '⟦'.
		self parameters do: [ :each | s << each name ] separatedBy: [ s << ', ' ].
		s << '⟧'
	]