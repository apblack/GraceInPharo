visiting
visitTypeExpression: aTypeExpression
	| symbol |
	aTypeExpression ops ifEmpty: [ 
			^ GraceBuildType from: aTypeExpression term ].
	aTypeExpression ops overlappingPairsDo: [ :ea :eb | (ea value = eb value) ifFalse: [ 
		GraceTypeError mixedOperatorsIn: aTypeExpression ]].
	symbol := aTypeExpression ops first value.
	self halt.
	('&' = symbol) ifTrue: [  ^ GraceAmpersandType fromExpression: aTypeExpression ].
	('+' = symbol) ifTrue: [  ^ GracePlusType fromExpression: aTypeExpression ].
	('|' = symbol) ifTrue: [  ^ GraceVariantType fromExpression: aTypeExpression ].
	self error: 'type expressions with ', symbol , ' are not yet supported'
	