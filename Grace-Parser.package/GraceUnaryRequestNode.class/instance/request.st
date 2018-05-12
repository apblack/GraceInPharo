accessing
request
	"to conform to other kinds of request, I need to return a RequestPart object containing the request.  This will normally be a RequestPartNoArguments, but if I have a typeArgument, then it will be a RequestPartsWithArguments, with type arguments but no normal arguments."
	
	| requestNode |
	typeArgList ifNil: [ 
		^ GraceRequestPartNoArgumentsNode new requestPart: op ].
	
	requestNode := GraceRequestPartsWithArgumentsNode new.
	requestNode addNode: op to: requestNode requestParts.
	requestNode typeArgList: typeArgList copy.
	^ requestNode
		