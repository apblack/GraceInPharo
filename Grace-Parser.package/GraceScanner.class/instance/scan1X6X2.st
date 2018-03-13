generated
scan1X6X2
	(self scanForString: 'ragma')
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	^ self reportLastMatch