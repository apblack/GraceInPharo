tests-Requests
test2BlocksAsArguments
	self good: #Request as: #RequestWithArguments  parse: 'assert {
            mt.errorsToBeRerun := true
} shouldRaise (NoSuchMethod)'