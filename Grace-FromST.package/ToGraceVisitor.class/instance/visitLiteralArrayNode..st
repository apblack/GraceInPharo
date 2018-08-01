visiting
visitLiteralArrayNode: aLiteralArray
	self << '['.
	aLiteralArray contents 
		do: [:each | self visitNode: each] 
		separatedBy: [ self ensureNoSpace ; << ', ' ].
	self ensureNoSpace ; << '] '
	