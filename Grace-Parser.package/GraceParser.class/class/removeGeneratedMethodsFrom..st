manual cleanup
removeGeneratedMethodsFrom: aClass
	aClass organization protocols do: [  :p | 
		(p name matchesRegex:'generated.*') ifTrue: [ 
			(p methods select: [ :selector | 
				(selector matchesRegex: 
					'reduceAction.*|startingStateFor.*|tokenActions|cacheId|scanForToken|scan[\dX]+' ) ]) do: [ :m |
						aClass removeSelector: m ]
		]
	]