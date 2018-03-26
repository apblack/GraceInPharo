tests-Annotations
testAnnotationStringArg
	| def ann |
	def := self good: #Declaration parse: 'def example is author "apb" = init'.
	self assert: def annotationList isA: #Annotation.
	ann := def annotations first.
	self assert: ann requestedName equals: 'author(_)'.
	self assert: ann argLists size equals: 1.