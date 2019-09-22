initialization
initializeSpecialMessages
	specialMessageDictionary := {
		#ifTrue:ifFalse: -> #translateIfTrueIfFalse:.
		#ifTrue: -> #translateIfTrue:.
		#ifFalse: -> #translateIfFalse:.
		#ifFalse:ifTrue: -> #translateIfFalseIfTrue:.
		#whileTrue: -> #translateWhileTrue:.
		#whileTrue -> #translateWhileTrue:.
		#whileFalse: -> #translateWhileFalse:.
		#whileFalse -> #translateWhileFalse:.
		#value -> #translateValue:.
		#value: -> #translateValue:.
		#value:value: -> #translateValue:.
		#value:value:value: -> #translateValue:.
		#to:do: -> #translateToDo:.
		#to: -> #'..'.
		#and: -> #&&.
		#or: -> #||.
		#= -> #==.
		#~= -> #'≠'.
		#>= -> #'≥'.
		#<= -> #'≤'.
		#, -> #++
	} asDictionary