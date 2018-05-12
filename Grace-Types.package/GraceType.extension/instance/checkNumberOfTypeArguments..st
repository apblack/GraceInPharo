*Grace-Types
checkNumberOfTypeArguments: aType
	(aType numberOfArguments = self numberOfParameters) ifFalse: [ 
		^ GraceSyntaxError 
			signal: 
				('type {1} needs {2} arguments, but given {3}' 
					format: { self typeName . self numberOfParameters . aType numberOfArguments } )
			node: aType ]