error handling
badAlias: anAliasNode
	| old |
	old := anAliasNode oldMethod declaredName.
	self reuseError: 'can''t define an alias for `' , old , '` because it is not present in the inherited object' node: anAliasNode