visiting
visitArrayNode: anArray
	self << '['.
	anArray statements 
		do: [:each | self visitNode: each] 
		separatedBy: [ self ensureNoSpace ; << ', ' ].
	self ensureNoSpace ; << ' ] '
	