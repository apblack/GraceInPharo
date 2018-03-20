*Grace-Tests-debugging
nodeKind
	"answers the name of this node's kind.  So, if I am a 
	GraceArgumentListNode, answers 'ArgumentList'"
	
	| className |
	className := (self className copyReplaceFrom: 1 to: 5 with: '').
	className := className copyReplaceFrom: (className size - 3) to: (className size) with: ''.
	^ className