naming
typeName
	(args isEmpty) ifTrue: [ ^ self term typeName ].
	^ 'an ' , ops first , ' type'