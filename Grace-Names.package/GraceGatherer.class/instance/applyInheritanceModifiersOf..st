scope building
applyInheritanceModifiersOf: anInheritStatement
	"answer a new scope that contains the names provided by this 'use' or 'inherit' statement, 
	as modified by its exclude and alias clauses"

	| result reusedScope excludedNames |
	reusedScope := self reusedScope: anInheritStatement.
	reusedScope isGenerative
		ifFalse: [ ^ GraceReuseError notGenerative: anInheritStatement ].
	(GraceGatherer for: reusedScope node) collectReusedNames.
	result := GraceObjectScope new node: anInheritStatement.
	excludedNames := self namesFrom: reusedScope excludedBy: anInheritStatement.
	self addInheritedNamesFrom: reusedScope to: result excluding: excludedNames.
	self addAliasesFrom: anInheritStatement to: result from: reusedScope.
	^ result