naming
declaredName

	^ name ifNil: [ 'the module']  ifNotNil: [ 'module ', name ]
	