initialization
patch: token withAction: action inArray: tokenActions
	| location |
	location := symbolNames indexOf: token.
	tokenActions at: location put: action