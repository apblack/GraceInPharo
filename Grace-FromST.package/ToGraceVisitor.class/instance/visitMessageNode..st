visiting
visitMessageNode: aMessage
	| kws |
	"override the super-method because there are no cascades in Grace"
	
	kws := aMessage keywords.
	aMessage selector isBinary ifTrue: [ 
			self << '('.
			self visitNode: aMessage receiver.
			self ensureASpace.
			self rewriteEqualitySelectors: kws.
			self << kws first << ' '.
			self emitOperatorArgument: aMessage arguments first.
			self << ') ' 
	] ifFalse: [
			aMessage receiver isSelf ifFalse: [ 
				self visitNode: aMessage receiver.
				self ensureNoSpace.
				self << '.' ].
			aMessage numArgs = 0
				ifTrue: [ self << aMessage selector ]
				ifFalse: [ | args |
				args := aMessage arguments.
				1 to: args size do: [ :i | 
					self << (kws at: i) allButLast << ' '.
					self emitArgument: (args at: i).
					self << ' ' ] 
				]
	]