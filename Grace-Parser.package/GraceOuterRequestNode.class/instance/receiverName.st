printing
receiverName
	^ String streamContents: [ :s |
		outerDotTokens do: [ :_ | s << 'outer' ] separatedBy: [ s << '.' ]
	]