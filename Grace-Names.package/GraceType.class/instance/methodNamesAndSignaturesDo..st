conformance
methodNamesAndSignaturesDo: a2ArgBlock
	self attributeScope localNamesAndValuesDo: [ :n :v |
		 a2ArgBlock value: n value: (self substituteForParametersIn: v) ]