initialization
initializeAsJoinOf: methA and: methB
	name := methA declaredName.
	argumentTypes := methA arguments with: methB arguments collect: [ :a :b | a type meet: b type ].
	resultType := methA result type join: methB result type 
	