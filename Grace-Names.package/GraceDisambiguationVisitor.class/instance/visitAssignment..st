visit methods
visitAssignment: anAssignment
	"if this is an assignment request, replace this assignment node with a request node"
	| rewrittenNode |
	rewrittenNode := GraceNodeRewriter rewriteAssignment: anAssignment.
	^ rewrittenNode == anAssignment 
		ifTrue: [ super visitAssignment: anAssignment ]
		ifFalse: [ rewrittenNode acceptVisitor: self ]