*Grace-Parser
printOn: s
	| separator |
	s << ' ( '.
	separator := orTokens ifEmpty: [ ' ' ] ifNotEmpty: [ ' | ' ]. 
	terms do: [ :each | each printOn: s ] separatedBy: [ s << separator].
	s << ' ) '