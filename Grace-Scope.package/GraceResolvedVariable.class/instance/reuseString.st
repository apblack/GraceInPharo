printing
reuseString
	"Answers a string, suitable for printing, that describes my reuse."
	^ isReused ifTrue: [ 'reused ' ] ifFalse: [ 'lexically-enclosing ' ]