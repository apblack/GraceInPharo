tests - indentation
testContinuationEndedByCloseBrace
	"A continued line is ended by an unmached open close"

	| result thenItems |
	result := self good: #Module parse: 'var dtype
if (false != dtype) then { 
    dtype.match(result) &&
        dtype.isWellFormed } else { return true }'.
	thenItems := result items second request argLists second args first items.
	self assert: thenItems size equals: 1.
	self assert: thenItems first isA: #BinaryRequest.
	
	self should: [self good: #Module parse: 'var dtype
if (false != dtype) then { 
    dtype.match(result) &&
        dtype.isWellFormed }
            else { return true }'.] raise: GraceLexicalError 
	whoseDescriptionIncludes: 'line 5 -- On closing a block, the indentation must return to the same level as when the block was opened.'
	description: 'continuation should have been ended by an unmatched `}`'