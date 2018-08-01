private
rewriteEqualitySelectors: keywordSelectors
	| kw1 |
	(keywordSelectors size > 1) ifTrue: [ ^ self ].
	kw1 := keywordSelectors first.
	(kw1 = '=') ifTrue: [ keywordSelectors at: 1 put: '=='.  ^ self ].
	(kw1 = '~=') ifTrue: [ keywordSelectors at: 1 put: '≠'.  ^ self ].
	^ self