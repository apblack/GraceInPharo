setUp-tearDown
setUp
	"ensure that the parser has been compiled by SmaCC"
	
	self isParserOutdated ifTrue: [  self recompileParser ].
	self checkNodeHierarchy
				