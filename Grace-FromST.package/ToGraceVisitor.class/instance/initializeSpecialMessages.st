initialization
initializeSpecialMessages
	specialMessageDictionary := {
		#ifTrue:ifFalse: -> #translateIfTrueIfFalse:.
		#ifTrue: -> #translateIfTrue:.
		#ifFalse: -> #translateIfFalse:.
		#ifFalse:ifTrue: -> #translateIfFalseIfTrue:.
		#and: -> #&&.
		#or: -> #||.
		#= -> #==.
		#~= -> #'≠'.
		#>= -> #'≥'.
		#<= -> #'≤'.
		#, -> #++
	} asDictionary