scope building
applyModifiersOf: aGraceReuseStatement
	"answer a new scope that contains the names provided by this 'use' or 'inherit' statement, 
	as modified by its exclude and alias clauses"
	| result exclusions reusedScope aliases excludedNames |
	aGraceReuseStatement superExpr startsWithSelf 
		ifTrue: [ self selfReuseError: aGraceReuseStatement ].
	reusedScope := aGraceReuseStatement superExpr objectScopeInScope: aGraceReuseStatement scope.
	result := GraceObjectScope new.
	result node: aGraceReuseStatement.
	exclusions := aGraceReuseStatement modifiers select: [ :each | each isExcludeClause ]. 
	exclusions do: [ :ex | 
		(reusedScope defines: ex method declaredName) ifFalse: [ self badExclusion: ex ] ].
	excludedNames := exclusions collect: [ :each | each method declaredName ].
	reusedScope localAndReusedNamesAndValuesDo: [ :nm :val | 
		(excludedNames includes: nm) ifFalse: [result add: val withName: nm ] ].
	aliases := aGraceReuseStatement modifiers select: [ :each | each isAliasClause ].
	aliases do: [ :al |  | oldName oldValue |
		oldName := al oldMethod declaredName.
		oldValue := reusedScope lookup: oldName ifAbsent: [ ^ self badAlias: al  ].
		result add: oldValue withName: al newMethod declaredName].
	^ result