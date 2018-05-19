instansiation
substitute: bindings 
	arguments doWithIndex: [ :each :i |
		(bindings at: each ifAbsent: [ ])
			ifNotNil: [ :val | arguments at: i put: val ] ]