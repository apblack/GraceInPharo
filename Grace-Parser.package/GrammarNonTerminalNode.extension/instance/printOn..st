*Grace-Parser
printOn: s
	| name |
	name := symbolnameToken value.
	(GracePrintableGrammar isEmptyNonTerminal: name) ifTrue: [ ^ self ]. 
	s << symbolnameToken value