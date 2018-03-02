scope building
addAliasesFrom: aReuseStatement to: aScope from: reusedScope
	"Look at the alias clauses in aReuseStatement, and add the appropriate attributes to aScope"
	| aliases |
	aliases := aReuseStatement modifiers
		select: [ :each | each isAliasClause ].
	aliases do: [ :al |  | oldName oldValue |
		oldName := al oldMethod declaredName.
		oldValue := reusedScope lookup: oldName ifAbsent: [ ^ self badAlias: al ].
		aScope add: oldValue withName: al newMethod declaredName ].