private
doHeaderFor: aMethod
	| selector |
	self << 'method '.
	selector := aMethod selector.
	selector isBinary ifTrue: [ 
		selector := specialMessageDictionary at: selector ifAbsent: [ selector ].
		self << selector << ' (' << aMethod arguments first name << ') '
	] ifFalse: [ 
		(aMethod numArgs = 0) ifTrue: [ 
			self << aMethod selector << ' '
		] ifFalse: [ | kws params |
			kws := aMethod keywords collect: [ :each | each copyReplaceAll: ':' with: '' ].
			params := aMethod arguments.
			1 to: aMethod numArgs do: [ :i | 
				self << (kws at: i) << ' (' << (params at: i) name << ') ' ] 
		]
	]