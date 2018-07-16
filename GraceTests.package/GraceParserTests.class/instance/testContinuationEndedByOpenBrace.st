tests - indentation
testContinuationEndedByOpenBrace
	"A continued line is ended by an unmached open brace"

	| result thenItems |
	result := self good: #Module parse: 'var dtype
if ((false != dtype) &&
        { dtype.nameString != "Unknown" }) then {
        return true
}'.
	thenItems := result items second request argLists second args first items.
	self assert: thenItems size equals: 1.
	self assert: thenItems first isA: #Return