*Grace-Types
methodNamesAndSignaturesDo: a2ArgBlock
	self attributeScope localNamesAndValuesDo: [ :n :v |
		| sig |
		sig := GraceSignature fromMethod: v.
		a2ArgBlock value: n value: sig
	]