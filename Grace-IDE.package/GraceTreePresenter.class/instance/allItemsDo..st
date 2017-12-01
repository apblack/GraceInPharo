enumeration
allItemsDo: aBlock 
	self rootNodePresenters do: [ :each |
		each hasChildren value ifTrue: [ 
			self childrenOf: each do: aBlock  ]
		ifFalse: [ aBlock value: each ]
	]