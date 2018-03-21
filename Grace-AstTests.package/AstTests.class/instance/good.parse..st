test helpers
good: nonTerminal parse: aProgramFragment
	| parseTree ast |
	parseTree := super good: nonTerminal parse: aProgramFragment.
	ast := parseTree acceptVisitor: GraceAstBuilder new.
	self checkAllNodesAreAst: ast