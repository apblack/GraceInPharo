visiting
visitMessageNode: aMessage
	"override the super-method because there are no cascades in Grace"
	| newMessage |
	newMessage := self translateSpecialMessages: aMessage.
	newMessage selector isBinary
		ifTrue: [ self visitBinaryMessageNode: newMessage ]
		ifFalse: [ self visitKeywordMessageNode: newMessage ]