token-actions
reservedWord
	"if we have matched a reserved word, we have not also matched an id"

	(matchActions includes: self idId) ifTrue: [ 
		matchActions := matchActions copyWithout: self idId].
	^ self createTokenFor: outputStream contents