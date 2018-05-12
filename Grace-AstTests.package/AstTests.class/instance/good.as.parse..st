test helpers
good: startSymbol as: subKind parse: aString
	"Try parsing aString as a startSymbol.  Build scopes, and apply parse-tree re-writings.
	Then convert to an Ast."
	
	| ast parseTree startState |
	startState := self parserUnderTest perform: (#startingStateFor , startSymbol) asSymbol.
	parseTree := self parserUnderTest parseStream: aString readStream startingAt: startState.
	parseTree completeSource: aString.
	parseTree checkParentLinks.
	parseTree := GraceBuildScopesVisitor new acceptNode: parseTree.
	parseTree := GraceReuseVisitor new acceptNode: parseTree.
	parseTree := GraceDisambiguationVisitor new acceptNode: parseTree.
	parseTree checkParentLinks.
	ast := parseTree acceptVisitor: GraceAstBuilder new.
	self checkAllNodesAreAst: ast.
	^ ast
	