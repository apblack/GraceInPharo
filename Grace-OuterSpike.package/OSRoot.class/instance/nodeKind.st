printing
nodeKind
	"answers the name of this node's kind.  So, if I am a 
	OSList, answers 'List'"
	
	| className |
	className := (self className copyReplaceFrom: 1 to: 2 with: '').
	^ className