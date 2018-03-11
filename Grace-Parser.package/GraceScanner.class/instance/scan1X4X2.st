generated
scan1X4X2
	(self scanForString: 'ragma')
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch