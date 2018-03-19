error handling
mixedOperatorsIn: aTypeExpression
	^ self signal: 'please use parentheses to disambiguate this expression' node: aTypeExpression