visiting
visitMessageNode: aMessage
	"override the super-method because there are no cascades in Grace"

	aMessage selector isBinary
		ifTrue: [ 
			self visitNode: aMessage receiver.
			self ensureASpace ]
		ifFalse: [
			aMessage receiver isSelf
				ifFalse: [ self visitNode: aMessage receiver.
				self ensureNoSpace.
				self << '.' ]].
	aMessage numArgs = 0
		ifTrue: [ self << aMessage selector ]
		ifFalse: [ | args kws |
			args := aMessage arguments.
			kws := aMessage keywords collect: [ :each | each copyReplaceAll: ':' with: ''].
			self rewriteEqualitySelectors: kws.
			1 to: args size do: [ :i | 
				self << (kws at: i) << ' '.
				self emitArgument: (args at: i).
				self << ' ' ] ]