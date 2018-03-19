conformance
signatureConformsTo: anotherMethodType underAssumptions: assumptions 
	self parameters with: anotherMethodType parameters do: [ :pSelf :pOther |
		(pOther conformsTo: pSelf underAssumptions: assumptions) ifFalse: [ ^ false ]
	].
	^ self result typeValue conformsTo: anotherMethodType result underAssumptions: assumptions 