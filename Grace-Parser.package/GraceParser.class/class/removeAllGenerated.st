manual cleanup
removeAllGenerated
	"self removeAllGenerated"
	
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceParser).
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceParser) class.
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceScanner).
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceScanner) class.
	