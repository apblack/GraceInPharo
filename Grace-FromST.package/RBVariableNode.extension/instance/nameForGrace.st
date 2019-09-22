*Grace-FromST
nameForGrace
	name = 'var' ifTrue: [ ^ 'variable' ].
	name = 'def' ifTrue: [ ^ 'defn' ].
	^ name