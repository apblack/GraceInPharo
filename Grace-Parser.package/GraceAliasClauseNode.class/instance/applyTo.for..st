applying operation
applyTo: aScope for: anExecutor
	| def |
	def := aScope
		lookupReused: oldMethod declaredName
		ifAbsent: [ ^ anExecutor badAlias: self ].
	aScope add: def withName: newMethod declaredName