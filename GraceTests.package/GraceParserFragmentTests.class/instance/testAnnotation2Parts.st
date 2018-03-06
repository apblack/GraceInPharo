tests-Annotations
testAnnotation2Parts
	| def ann |
	def := self good: #Declaration parse: 'def example is public(1)private(2,3) = init'.
	self assert: def annotation isA: #Annotation.
	ann := def annotation anns first.
	self assert: ann requestedName equals: 'public(_)private(_,_)'.
	self assert: ann argLists size equals: 2.