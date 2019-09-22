*grace-FromST
nameForGrace
	| n |
	n := self name.
	(n endsWith: ' class') ifTrue: [ n := n copyReplaceFrom: (n size - 5) to: (n size) with: 'Factory' ].
	^ n