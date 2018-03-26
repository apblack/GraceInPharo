instance creation
from: aRange scope: aScope receiver: anExpression requestedName: aString argument: anExpressionAst 
	^ self new 
		initializeFrom: aRange
		scope: aScope
		receiver: anExpression 
		requestedname: aString 
		arguments: (GraceListAst with: anExpressionAst)