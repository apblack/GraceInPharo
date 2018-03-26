test helpers
good: startSymbol as: subKind parse: aString
	"try parsing aString as a startSymbol.  Fail
	iff the parse fails, or if the result is not a sub-instance of subKind"
	
	| parseTree startState |
	startState := self parserUnderTest perform: (#startingStateFor , startSymbol) asSymbol.
	parseTree := self parserUnderTest parseStream: aString readStream startingAt: startState.
	parseTree completeSource: aString.
	parseTree checkParentLinks.
	parseTree := GraceBuildScopesVisitor new acceptNode: parseTree.
	parseTree := GraceReuseVisitor new acceptNode: parseTree.
	parseTree checkParentLinks.
	^ parseTree acceptVisitor: GraceAstBuilder new
	