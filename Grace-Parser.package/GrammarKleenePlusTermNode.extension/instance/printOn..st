*Grace-Parser
printOn: s
	| termString |
	termString := term printString.
	(termString includes: Character space)
		ifTrue: [ s << '( ' << termString << ' )+' ]
	   ifFalse: [ s << termString << '+' ]