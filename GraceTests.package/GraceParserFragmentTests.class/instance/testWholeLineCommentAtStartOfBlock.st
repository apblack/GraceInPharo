tests-Comments
testWholeLineCommentAtStartOfBlock
	| request args |
	request := self good: #Request as: #RequestWithArguments parse: 'if (oneToFive.last ≠ 0) then {
    // without this check, a bad implementation will loop forever
    oneToFive.addLast 0
}'.
	args := request argLists.
	self assert: args size equals: 2.