conformance
signatureConformsTo: anotherMethodType inType: selfType underAssumptions: assumptions 
	self parameters with: anotherMethodType parameters do: [ :pSelf :pOther |
		(pOther conformsTo: pSelf inType: selfType underAssumptions: assumptions) ifFalse: [ ^ false ]
	].
	^ self result conformsTo: anotherMethodType result inType: selfType underAssumptions: assumptions 