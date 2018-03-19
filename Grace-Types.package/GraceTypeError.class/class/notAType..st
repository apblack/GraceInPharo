error handling
notAType: anIdentifier
	^ self signal: anIdentifier value , ' is not a type' node: anIdentifier