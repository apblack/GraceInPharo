visit methods
visitModule: aModule
	self createScope: GraceModuleScope in: aModule.
	aModule dialect ifNil: [ | dialectScope currentScope |
			dialectScope := GraceModuleRegistry attributeScopeOf: 'standardGrace'.
			currentScope := aModule scope.
			currentScope outerScope: dialectScope.
			currentScope
				add: ((GracePseudovariable fromParseTreeNode: dialectScope node)
							attributeScope: dialectScope)
				withName: 'outer' ].
	^ super visitModule: aModule