conformance
allSignaturesConformTo: anotherType underAssumptions: aCollection 
	^ anotherType methodNames allSatisfy: [ :each |
		(self methodNamed: each) 
				signatureConformsTo: (anotherType methodNamed: each) 
				inType: self
				underAssumptions: aCollection ]