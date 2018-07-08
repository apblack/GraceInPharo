*Grace-Parser
printOn: s
	s << ((self className copyReplaceAll: 'Grammar' with: '') copyReplaceAll: 'Node' with: ' for ').
	s << lhs symbolName value