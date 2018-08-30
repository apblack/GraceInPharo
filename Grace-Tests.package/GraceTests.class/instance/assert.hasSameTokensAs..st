helpers
assert: tokens1 hasSameTokensAs: tokens2 
	| message sz |
	message := String streamContents: [ :s |
		tokens1 size = tokens2 size ifFalse: [ 
			s << 'first token stream has size ' << tokens1 size asString. 
			s << ' but second stream has size ' << tokens2 size asString ; cr].
		sz := tokens1 size min: tokens2 size.
		1 to: sz do: [ :ix | | t1 t2 |
			t1 := tokens1 at: ix.
			t2 := tokens2 at: ix.
			(t1 = t2) ifFalse: [ 
				s <<  'streams differ at element ' << ix asString << ': '.
				t1 printOn: s.
				t2 printOn: s.
				s cr.
			]
		]
	].
	self assert: message isEmpty description: message
