accessing value
numberValue
	| parts radix |
	parts := self value splitOn: $x.
	radix := parts first asNumber.
	(radix isZero) ifTrue: [ radix := 16 ].
	^ parts second inject: 0 into: [ :acc :each | (acc * radix) + each digitValue ]