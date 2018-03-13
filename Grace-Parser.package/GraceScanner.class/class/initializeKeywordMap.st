generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(53 'outer' #(49 #(#default))) #(53 'self' #(51 #(#default))) #(59 '*>' #(61 #(#default))) #(59 ':>' #(61 #(#default))) #(59 '<*' #(61 #(#default))) #(59 '<:' #(61 #(#default))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap