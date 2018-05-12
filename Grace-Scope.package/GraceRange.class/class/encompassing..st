instance creation
encompassing: aCollectionOfRanges
	"return a range that starts at the minimum of aCollectionOfRanges, and ends at the maximum of aCollectionOfRanges"
	| startPosition stopPosition first |
	aCollectionOfRanges ifEmpty: [ ^ self empty ].
	first := aCollectionOfRanges first.
	startPosition := aCollectionOfRanges inject: first startPosition into: [ :min :each | min min: each startPosition ].
	stopPosition := aCollectionOfRanges inject: first stopPosition into: [ :max :each | max max: each stopPosition ].
	^ self from: startPosition to: stopPosition in: first scanner