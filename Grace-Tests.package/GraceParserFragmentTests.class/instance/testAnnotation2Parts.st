tests-Annotations
testAnnotation2Parts
	| def ann |
	def := self good: #Declaration parse: 'def example is public(1)private(2,3) = init'.
	self assert: def annotationList isA: #Annotations.
	ann := def annotations first.
	self assert: ann requestedName equals: 'public(_)private(_,_)'.
	self assert: ann argLists size equals: 2.