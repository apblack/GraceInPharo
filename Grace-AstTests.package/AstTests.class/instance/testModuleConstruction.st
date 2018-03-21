tests
testModuleConstruction
	| parseTree ast defOne methTwo |
	parseTree := self good: #Module parse: 'dialect "minitest"
def one = 101
method two { 202 }
'.
	ast := parseTree acceptVisitor: GraceAstBuilder new.
	self assert: (ast isKindOf: GraceRootAst).
	ast items do: [ :each | self assert: ( each isKindOf: GraceRootAst ) ].
	defOne := ast items at: 1.
	self assert: (defOne isKindOf: GraceAttributeDeclarationAst).
	self assert: defOne isDef description: 'defOne is not a def'.
	self assert: defOne rhs numberValue equals: 101.
	methTwo := ast items at: 2.
	self assert: (methTwo isKindOf: GraceAttributeDeclarationAst).
	self assert: methTwo isMethod description: 'methTwo is not a method'.
	self assert: (methTwo rhs at: 1) numberValue equals: 202