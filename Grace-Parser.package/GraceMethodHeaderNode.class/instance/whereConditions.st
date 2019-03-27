generated
whereConditions
	"answers the where conditions from the type parameter list, or nil is there is none"
	^ typeParameterList ifNotNil: [:t | 
		t where ifNotNil: [ :w | w conditions ] 
	]