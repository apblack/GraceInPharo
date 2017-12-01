enumeration
allFilesDo: aBlock 
	self roots do: [ :each |
		each hasChildren value ifTrue: [ 
			self childrenOf: each do: aBlock  ]
		ifFalse: [ aBlock value: each ]
	]