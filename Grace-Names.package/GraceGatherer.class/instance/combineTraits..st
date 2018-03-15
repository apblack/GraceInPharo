scope building
combineTraits: traitScopes
	| tempScope |
	tempScope := GraceObjectScope new.
	traitScopes
		do: [ :s | s localAndReusedNamesAndValuesDo: [ :nm :vl | 
			(vl isAvailableForReuse and: [(nodeScope definesLocally: nm) not]) ifTrue: [ 
				(tempScope definesLocally: nm) ifTrue: [ 
					^ GraceReuseError
							signal: 'trait conflict -- there are multiple definitions of ''' , nm , ''', ' , 
										'but no local override'
							node: s node ].
				tempScope add: vl withName: nm ] ] ].
	nodeScope addLocalAndReusedFrom: tempScope