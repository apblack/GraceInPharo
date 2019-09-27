*Grace-FromST
nameForGrace
	| n |
	n := self name uncapitalized.
	(n beginsWith: 'grace') ifTrue: [ n := (n copyReplaceFrom: 1 to: 5 with: '') uncapitalized ].
	(n endsWith: ' class') ifTrue: [ n := n copyReplaceFrom: (n size - 5) to: (n size) with: 'Factory' ].
	^ n