*Grace-Parser
printOn: s
	alternates do: [ :each | each printOn: s ] separatedBy: [ 
		s cr; tab; nextPutAll: '| ' ]