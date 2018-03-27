test helpers
assert: aName in: aScope is: visibilities andIsNot: nonVisibilities
	| var |
	var := aScope lookupLocally: aName ifAbsent: [
					self fail: aName , ' is not in scope'].
	self assert: (var isKindOf: GraceAbstractVariable).
	visibilities do: [ :each |
		self assert: (var perform: (('is' , each capitalized) asSymbol))
		  	  description: aName , ' is not ' , each
	].
	nonVisibilities do: [ :each |
		self deny: (var perform: (('is' , each capitalized) asSymbol))
		  	  description: aName , ' is ' , each
	]