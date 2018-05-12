conformance
signatureConformsTo: anotherSignature underAssumptions: assumptions 
	self parameters with: anotherSignature parameters do: [ :pSelf :pOther |
		(pOther conformsTo: pSelf underAssumptions: assumptions) ifFalse: [ ^ false ]
	].
	^ self result conformsTo: anotherSignature result underAssumptions: assumptions 