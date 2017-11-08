accessing
rangePrintString
	"answers my range (start-stop) as a printable string"

	| startLC stopLC |
	startLC := self startLineAndCol.
	stopLC := self stopLineAndCol.
	(startLC = stopLC) ifTrue: [ ^ startLC x asString , '#' , startLC y asString ].
	^ stopLC x = startLC x
		ifTrue: [ startLC x asString , '#' , startLC y asString , '-' , stopLC y asString ]
		ifFalse: [ startLC x asString , '#' , startLC y asString , '-' 
					, stopLC x asString , '#' , stopLC y asString
			]