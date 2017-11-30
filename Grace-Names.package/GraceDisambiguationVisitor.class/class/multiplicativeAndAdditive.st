constants
multiplicativeAndAdditive
	^ plusTimes ifNil: [ plusTimes := Set with: '+' with: '*' with: '/' with: '-']