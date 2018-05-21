visit methods
visitDialect: aDialectNode
	| dialectName currentScope |
	self assert: [ aDialectNode parent isModule ].	"enforced by the grammar"
	dialectName := aDialectNode name.
	dialectName = 'none'
		ifFalse: [ | dialectScope |
			dialectScope := GraceModuleRegistry attributeScopeOf: aDialectNode name.
			currentScope := aDialectNode scope.
			currentScope outerScope: dialectScope.
			currentScope
				add: ((GracePseudovariable fromParseTreeNode: dialectScope node)
							attributeScope: dialectScope)
				withName: 'outer' ].
	^ super visitDialect: aDialectNode