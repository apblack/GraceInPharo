scope building
namesFrom: reusedScope excludedBy: aReuseStatement
	"look at all of the exclusion clauses in aReuseStatement, and make sure that each excluded
	name is actually present in reusedScope.  Returns a collection containing the excluded names."
	| exclusionClauses |
	exclusionClauses := aReuseStatement modifiers
		select: [ :each | each isExcludeClause ].
	exclusionClauses do: [ :ex | 
		(reusedScope defines: ex method declaredName)
			ifFalse: [ self badExclusion: ex ] ].
	^ exclusionClauses collect: [ :each | each method declaredName ]