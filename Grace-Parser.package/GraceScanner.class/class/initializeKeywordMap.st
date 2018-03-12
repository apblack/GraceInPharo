generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(51 'outer' #(47 #(#default))) #(51 'self' #(49 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap