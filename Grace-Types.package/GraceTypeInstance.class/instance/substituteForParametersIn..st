parameters
substituteForParametersIn: aSignature 
	| bindings |
	bindings := Dictionary new.
	self parameters with: self arguments do: [ :param :val | bindings at: param variable put: val ].
	^ aSignature substitute: bindings