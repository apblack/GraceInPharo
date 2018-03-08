assignment requests
buildRequestFromAssignment: anAssignment
	"return a new RequestPartWithArgumentsNode to replace anAssignment"
	| newNode scanner requestToken argList |
	newNode := GraceRequestPartWithArgumentsNode new.
	scanner := anAssignment scanner.
	requestToken := GraceToken value: anAssignment lhs name , ':=' 
										start: anAssignment startPosition 
										ids: {scanner idId} 
										scanner: scanner.
	newNode addToken: requestToken to: newNode requestParts.
	argList := GraceArgumentListNode new.
	argList addNode: anAssignment rhs to: argList args.
	newNode addNode: argList to: newNode argLists.
	^ newNode fixParentPointers