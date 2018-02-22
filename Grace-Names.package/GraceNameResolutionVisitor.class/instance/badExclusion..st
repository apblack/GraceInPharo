error handling
badExclusion: anExcludeNode
	
	| superDescription |
	superDescription := anExcludeNode parent isInheritStatement 
		ifTrue: [ 'the inherited object' ] 
		ifFalse: [ 'the used trait' ].
	^ self reuseError: 'can''t exclude ' , anExcludeNode method declaredName , 
                    ' because it is not present in ' , superDescription
			 node: anExcludeNode 