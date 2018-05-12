*Grace-Tests
nodeKind
	"answers the name of this node's kind.  So, if I am a 
	GraceMethodDeclAst, answers 'MethodDecl'"
	
	| className |
	className := (self className copyReplaceFrom: 1 to: 5 with: '').
	className := className copyReplaceFrom: (className size - 2) to: (className size) with: ''.
	^ className