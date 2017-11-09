manual cleanup
removeAllGenerated
	"self removeAllGenerated"
	
	GraceRootNode allSubclassesDo: [ :c | c removeFromSystem ].
	self removeGeneratedMethodsFrom: GraceRootNode.
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceParser).
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceParser) class.
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceScanner).
	self removeGeneratedMethodsFrom: (Smalltalk globals at: #GraceScanner) class.
	