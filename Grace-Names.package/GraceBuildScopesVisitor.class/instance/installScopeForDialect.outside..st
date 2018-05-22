scope creation
installScopeForDialect: dialectName outside: currentScope
	| dialectScope |
	dialectScope := GraceModuleRegistry attributeScopeOf: dialectName.
	currentScope outerScope: dialectScope.
	self addOuterBindingFor: dialectScope in: currentScope