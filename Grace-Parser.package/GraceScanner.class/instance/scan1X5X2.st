generated
scan1X5X2
	(self scanForString: 'ragma')
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch