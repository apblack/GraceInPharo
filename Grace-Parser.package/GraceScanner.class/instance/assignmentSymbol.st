token-actions
assignmentSymbol
	"if we have matched :=, we have not also matched an <operator>"

	(matchActions includes: self operatorId) ifTrue: [ 
		matchActions := matchActions copyWithout: self operatorId].
	^ self createTokenFor: outputStream contents