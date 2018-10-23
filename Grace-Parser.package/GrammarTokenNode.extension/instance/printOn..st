*Grace-Parser
printOn: s
	| tokString |
	tokString := tokennameToken value.
	tokString := GracePrintableGrammar tokenTranslations at: tokString ifAbsent: [ tokString ].
	s << tokString