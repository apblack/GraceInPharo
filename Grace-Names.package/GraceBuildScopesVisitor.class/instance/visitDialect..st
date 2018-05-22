visit methods
visitDialect: aDialectNode
	| dialectName |
	self assert: [ aDialectNode parent isModule ].	"enforced by the grammar"
	dialectName := aDialectNode name.
	dialectName = 'none' ifFalse: [ 
		self installScopeForDialect: dialectName outside: aDialectNode scope ].
	^ super visitDialect: aDialectNode