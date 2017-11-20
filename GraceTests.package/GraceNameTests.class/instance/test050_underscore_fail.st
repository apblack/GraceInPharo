minigrace failing
test050_underscore_fail
	| result var |
	result := self bad: #Module parse: 'var _ := 3
print(_)
'.
	var := result items first.
	self assert: var isA: #VarDeclaration.
	self assert: var declaredName equals: '_'.
	self assert: var id isAnonymous description: ('var {1} is not anonymous' format: { var declaredName })