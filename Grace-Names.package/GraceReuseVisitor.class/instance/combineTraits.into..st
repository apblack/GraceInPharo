scope building
combineTraits: traitScopes into: nodeScope
	| tempScope |
	tempScope := GraceObjectScope new.
	traitScopes
		do: [ :s | s localAndReusedNamesAndValuesDo: [ :nm :vl | 
			(nodeScope definesLocally: nm) ifFalse: [ 
				(tempScope definesLocally: nm) ifTrue: [ 
					^ GraceReuseError
							signal: 'trait conflict -- there are multiple definitions of ''' , nm , ''', ' , 
										'but no local override'
							withTag: s node ].
				tempScope add: vl withName: nm ] ] ].
	nodeScope addLocalAndReusedFrom: tempScope