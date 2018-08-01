private
doHeaderFor: aMethod
	self << 'method '.
	aMethod numArgs = 0
		ifTrue: [ self << aMethod selector ]
		ifFalse: [ | kws params |
			kws := aMethod keywords collect: [ :each | each copyReplaceAll: ':' with: '' ].
			self rewriteEqualitySelectors: kws.
			params := aMethod arguments.
			1 to: aMethod numArgs do: [ :i | 
				self ensureASpace ; << (kws at: i).
				self << ' (' << (params at: i) name << ')' ] ]