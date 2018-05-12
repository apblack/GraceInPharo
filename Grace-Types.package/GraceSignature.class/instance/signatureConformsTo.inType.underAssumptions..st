conformance
signatureConformsTo: anotherSignature inType: selfType underAssumptions: assumptions 
	self parameters with: anotherSignature parameters do: [ :pSelf :pOther |
		(pOther conformsTo: pSelf inType: selfType underAssumptions: assumptions) ifFalse: [ ^ false ]
	].
	^ self result conformsTo: anotherSignature result inType: selfType underAssumptions: assumptions 