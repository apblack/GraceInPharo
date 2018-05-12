conformance
buildMethodDictionary
	"my method dictionary contains the union (join) of the methods of my arguments"
	| tempDict result |
	tempDict := GraceMultiDictionary new.
	operands do: [ :each |
		each methodNamesAndSignaturesDo: [ :k :v | tempDict at: k add: v ].
	].
	result := Dictionary new.
	tempDict keysAndValuesDo: [ :k :vs |
		result at: k put: (self joinOf: vs) ].
	^ result