naming
requestedName
	^ outers inject: '' into:  [ :acc :each | acc , each value ]