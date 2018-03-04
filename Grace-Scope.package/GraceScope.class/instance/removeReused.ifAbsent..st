adding & removing reused
removeReused: aName ifAbsent: aBlock

	self error: 'a ' , self className , ' has no reused names'.

	