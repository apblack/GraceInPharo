*Grace-Parser
printOn: s
	self alternates do: [ :each | each printOn: s ] separatedBy: [  
		s cr; << '        | ' ]
 