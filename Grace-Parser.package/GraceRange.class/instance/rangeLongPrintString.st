line and column
rangeLongPrintString
	"answers my range (start-stop) as an explanatory printable string"

	| startLC stopLC |
	startLC := self startLineAndCol.
	stopLC := self stopLineAndCol.
	(startLC = stopLC) ifTrue: [ ^ 'line ', startLC x asString , ' column ' , startLC y asString ].
	^ stopLC x = startLC x
		ifTrue: [ 'line ', startLC x asString , ' columns ' , startLC y asString , '-' , stopLC y asString ]
		ifFalse: [ 'line ', startLC x asString , ' column ' , startLC y asString , ', to line ' 
					, stopLC x asString , ' column ' , stopLC y asString
			]