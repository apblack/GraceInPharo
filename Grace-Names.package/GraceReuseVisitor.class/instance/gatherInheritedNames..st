scope building
gatherInheritedNames: node
	"this method is based on the algorithm used by minigrace; node is an Object or Class"
	| inhNodes objScope superScope inhNode |
	inhNodes := node items select: [ :each | each isInheritStatement ].
	inhNodes size > 1 ifTrue: [ ^ self reuseError: 'at most one inherit statement per object constructor' node: inhNodes second ].
	objScope := node scope.
	inhNodes 
		ifEmpty: [ 
			inhNode := nil.
			superScope := node defaultInheritedScope.
			objScope addLocalAndReusedFrom: superScope ]
		ifNotEmpty: [ 
			inhNode := inhNodes first.
			superScope := inhNode superExpr objectScopeInScope: objScope.
			objScope addLocalAndReusedFrom: superScope.
			inhNode modifiers do: [ :modifier | modifier applyTo: objScope for: self ].
			self flag: 'in minigrace, we also cache the provided names in inhNode'. 
		]
"          
            inhNode aliases do: [ :alias |  | old new def |
            old := alias oldName declaredName.
				def := superScope lookupLocallyOrReused: old ifAbsent: [self badAlias: alias].
            objScope add: def withName: alias newName declaredName
        }
        inhNode.exclusions.do { exId ->
            inhNode.providedNames.remove(exId.nameString) ifAbsent {
                errormessages.syntaxError('can''t exclude {exId.canonicalName} ' ++
                    'because it is not present in the inherited object')
                    atRange(exId.range)
            }
        }
"