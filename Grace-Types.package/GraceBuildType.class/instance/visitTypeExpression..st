visiting
visitTypeExpression: aTypeExpression
	| symbol |
	aTypeExpression ops ifEmpty: [ 
			^ GraceBuildType from: aTypeExpression term ].
	aTypeExpression ops overlappingPairsDo: [ :ea :eb | (ea value = eb value) ifFalse: [ 
		GraceTypeError mixedOperatorsIn: aTypeExpression ]].
	symbol := aTypeExpression ops first value.
	('&' = symbol) ifTrue: [  ^ GraceAmpersandType from: aTypeExpression withName: typeName].
	('+' = symbol) ifTrue: [  ^ GracePlusType from: aTypeExpression withName: typeName].
	('|' = symbol) ifTrue: [  ^ GraceVariantType from: aTypeExpression withName: typeName].
	self error: 'type expressions with ', symbol , ' are not yet supported'
	