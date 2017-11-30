visiting
visitRoot: aRoot
	ancestors addFirst: aRoot.
	^ [ self visitSmaCCParseNode: aRoot ] 
		ensure: [ ancestors removeFirst ]