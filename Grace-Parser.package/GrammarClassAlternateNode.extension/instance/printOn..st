*Grace-Parser
printOn: s
	rhsTerms terms do: [ :each | each printOn: s ] separatedBy: [ s space ]