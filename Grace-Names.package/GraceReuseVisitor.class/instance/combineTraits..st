scope building
combineTraits: traitScopes 
	| result |
	result := GraceObjectScope new.
	traitScopes do: [ :s |
		s localAndReusedNamesAndValuesDo: [ :nm :vl | 
			(result definesLocally: nm) ifTrue: [ 
				^ GraceReuseError 
						signal: 'trait conflict -- there are multiple definitions of ''', nm , ''''
						withTag: s node ].
			result add: vl withName: nm ] ].
	^ result