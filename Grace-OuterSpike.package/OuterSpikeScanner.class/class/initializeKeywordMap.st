generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(6 'outer' 5))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap