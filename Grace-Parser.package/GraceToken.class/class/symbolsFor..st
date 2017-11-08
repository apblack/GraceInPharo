symbols
symbolsFor: aCollectionOfIds
	(aCollectionOfIds size = 1) ifTrue: [ 
		^ self symbolFor: aCollectionOfIds first ].
	^ String streamContents: [ :s | 
		s << '{'.
		aCollectionOfIds do: [ :id |
			s << (self symbolFor: id).]
				separatedBy: [ s << ', ' ].
		s << '}'
	]
			