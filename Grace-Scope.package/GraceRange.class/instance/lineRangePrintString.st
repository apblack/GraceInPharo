printing
lineRangePrintString
	"answers my line range (start-stop) as an explanatory printable string, ignoring columns"

	| startL stopL |
	startL := self startLine.
	stopL := self stopLine.
	(startL = stopL) ifTrue: [ ^ 'line ', startL asString ].
	^ 'lines ', startL asString , '-' , stopL asString