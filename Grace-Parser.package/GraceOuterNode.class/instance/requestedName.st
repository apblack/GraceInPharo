naming
requestedName
	^ (outerDotTokens inject: '' into:  [ :acc :each | acc , each value ]) , outerToken value