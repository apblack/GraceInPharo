manual cleanup
removeGeneratedMethodsFrom: aClass
	aClass organization protocols do: [  :p | 
		(p name includesSubstring: 'generated') ifTrue: [ 
			p methods do: [  :m |
			aClass removeSelector: m ]
		]
	]