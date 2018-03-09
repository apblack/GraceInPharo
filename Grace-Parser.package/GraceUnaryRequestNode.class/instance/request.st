accessing
request
	"to conform to other kinds of request, I need to return a RequestPart object containing the request.  This will normally be a ReqeustPartNoArguments, but if I have a typeArgument, then it will be a RequestPartWithArguments with no normal arguments."
	
	| requestNode |
	typeArg ifNil: [ 
		^ GraceRequestPartNoArgumentsNode new requestPart: op ].
	
	requestNode := GraceRequestPartWithArgumentsNode new.
	requestNode addNode: op to: requestNode requestParts.
	requestNode typeArg: typeArg copy.
	^ requestNode
		