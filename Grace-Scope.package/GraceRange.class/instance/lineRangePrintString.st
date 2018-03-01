printing
lineRangePrintString
	"answers my line range ine the form 'line n' or 'lines n-m'"

	| startL stopL |
	startL := self startLine.
	stopL := self stopLine.
	(startL = stopL) ifTrue: [ ^ 'line ' , startL asString ].
	^ 'lines ' , startL asString , '-' , stopL asString