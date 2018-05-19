accessing
declaredType
	^ declaredType ifNil: [ 
		declaredType := declaredThing returns ifNil: [ 
			GraceUnknownType instance 
		] ifNotNil: [ :ret |
			GraceBuildType from: ret
		]
	]