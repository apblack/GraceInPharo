generated
typeParameters
	"answers the type parameters from the type parameter list, or nil if there is none"
	^ typeParameterList ifNotNil: [ :t | t parameters ]