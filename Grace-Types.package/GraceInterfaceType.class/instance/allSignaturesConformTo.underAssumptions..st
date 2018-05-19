conformance
allSignaturesConformTo: anotherType underAssumptions: assumptions 
	^ anotherType methodNames allSatisfy: [ :each |
		(self methodNamed: each) 
				signatureConformsTo: (anotherType methodNamed: each) 
				inType: self
				underAssumptions: assumptions ]