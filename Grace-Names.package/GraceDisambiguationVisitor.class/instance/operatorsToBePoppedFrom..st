operator precedence
operatorsToBePoppedFrom: operatorTokens
	| result |
	result := 1.
	operatorTokens reversed overlappingPairsDo: [ :a :b |
		 (self operator: b isOfGreaterOrEqualPrecedence: a) ifFalse: [ ^ result ].
		result := result + 1
	].
	^ result