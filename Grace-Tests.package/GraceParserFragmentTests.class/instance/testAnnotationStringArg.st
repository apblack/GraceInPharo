tests-Annotations
testAnnotationStringArg
	| def ann |
	def := self good: #Declaration parse: 'def example is author "apb" = init'.
	self assert: def annotation isA: #Annotation.
	ann := def annotation anns first.
	self assert: ann requestedName equals: 'author(_)'.
	self assert: ann argLists size equals: 1.