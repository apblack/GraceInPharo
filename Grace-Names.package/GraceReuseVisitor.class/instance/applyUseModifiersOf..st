scope building
applyUseModifiersOf: aUseStatement
	"answer a new scope that contains the names provided by this 'use' or 'inherit' statement, 
	as modified by its exclude and alias clauses"

	| result reusedScope excludedNames |
	reusedScope := self reusedScope: aUseStatement.
	reusedScope isGenerative
		ifFalse: [ ^ GraceReuseError notGenerative: aUseStatement ].
	result := GraceObjectScope new node: aUseStatement.
	excludedNames := self namesFrom: reusedScope excludedBy: aUseStatement.
	self addUsedNamesFrom: reusedScope to: result excluding: excludedNames.
	self addAliasesFrom: aUseStatement to: result from: reusedScope.
	^ result