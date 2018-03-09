accessing
request
	"to conform to other kinds of request, we need to return a RequestPart object containing the request and the argument."
	
	| requestNode argList |
	requestNode := GraceRequestPartWithArgumentsNode new.
	self assert: (ops size = 1).   "multiple arguments should have been rewritten before now"
	requestNode addToken: ops first to: requestNode requestParts.
	argList := GraceArgumentListNode new.
	argList addNode: args first copy to: argList args.
	requestNode addNode: argList to: requestNode argLists.
	^ requestNode
		