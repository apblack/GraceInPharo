identifier rewrite
updateIdentifier: anIdentifierNode using: aResolvedVariable
	"We have found the binding for anIdentifierNode. Fix-up the parser tree to reflect what we know"
	| newNode scanner outerDotToken objectsUp |
	scanner := anIdentifierNode scanner.
	anIdentifierNode definingOccurence: aResolvedVariable definition.
	objectsUp := aResolvedVariable objectsUp.
	aResolvedVariable definition isMethod ifTrue: [
		"make a request whose RequestPart is a copy of anIdentifierNode.  The copy is necessary because if we use the original,
		it's parent link will be overwritten, and then we won't be able to replace anIdeintiferNode by the newNode."
		objectsUp = 0 ifTrue: [
			newNode := GraceSelfRequestNode new request: anIdentifierNode copy.
			newNode selfDotToken: (GraceToken value: '' start: anIdentifierNode startPosition ids: {scanner selfDotId} scanner: scanner)
		].
		objectsUp > 0 ifTrue: [
			newNode := GraceOuterRequestNode new request: anIdentifierNode copy.
			outerDotToken := (GraceToken value: '' start: anIdentifierNode startPosition ids: {scanner outerDotId} scanner: scanner).
			newNode outerDotTokens: ((1 to: objectsUp) collect: [ :_ | outerDotToken ])
		].
		anIdentifierNode replaceWith: newNode
	]