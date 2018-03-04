testing
isLegalAsTrait
	^ self node items allSatisfy: [ :each | each isLegalInTrait ]