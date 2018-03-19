DNF conversion
convertToDNF
	| originalOperands |
	originalOperands := operands.
	operands := OrderedCollection new.
	originalOperands do: [ :each | 
		operands addAll: (each variants) ].
	^ self