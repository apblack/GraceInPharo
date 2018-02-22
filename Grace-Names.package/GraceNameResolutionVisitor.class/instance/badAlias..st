error handling
badAlias: anAliasNode
	| old new superDescription |
	old := anAliasNode oldMethod declaredName.
	new := anAliasNode newMethod declaredName.
	superDescription := anAliasNode parent isInheritStatement 
		ifTrue: [ 'the inherited object' ] 
		ifFalse: [ 'the used trait' ].
	self reuseError: 
				'can''t define `' , new , 
				'` as an alias for `' , old , 
				'` because `' , old , 
				'` is not present in ' , superDescription
		  node: anAliasNode