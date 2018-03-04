name gathering
collectReusedNames

   nodeScope areReusedNamesCompleted ifTrue: [ ^ self ].
   nodeScope areReusedNamesInProgress ifTrue: [ 
		self  reuseError: 'cyclic inheritance or trait use' ].
   nodeScope markReusedNamesAsInProgress.
	self gatherInheritedNames.
	self gatherUsedNames.
   nodeScope markReusedNamesAsCompleted
