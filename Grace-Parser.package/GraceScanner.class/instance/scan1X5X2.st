generated
scan1X5X2
	(self scanForString: 'ragma')
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch