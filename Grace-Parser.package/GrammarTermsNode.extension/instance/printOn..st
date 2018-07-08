*Grace-Parser
printOn: s
	terms do: [ :each | each printOn: s ] separatedBy: [ s space ]