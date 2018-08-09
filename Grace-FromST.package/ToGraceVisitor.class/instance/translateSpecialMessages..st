specialMessages
translateSpecialMessages: aMessage
	"answers a message node, equivalent to aMessage.  If aMessage is not special, answers aMessage itself."
	| specialMessage |
	specialMessage := specialMessageDictionary at: aMessage selector ifAbsent: [ ^aMessage ].
	^ (specialMessage beginsWith: #translate) ifTrue: [ 
		self perform: specialMessage with: aMessage
	] ifFalse: [
		aMessage copy selector: specialMessage
	]