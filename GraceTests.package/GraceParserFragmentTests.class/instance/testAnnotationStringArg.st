tests-Annotations
testAnnotationStringArg
	| def ann |
	def := self good: #Declaration parse: 'def example is author "apb" = init'.
	ann := def annotations first.
	self assert: ann isA: #RequestPartsWithArguments.
	self assert: ann requestedName equals: 'author(_)'.
	self assert: ann argLists size equals: 1.