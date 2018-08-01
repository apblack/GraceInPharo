visiting
visitTemporaryNodes: tempNodes
	tempNodes do: [ :each | self declareTemp: each ]