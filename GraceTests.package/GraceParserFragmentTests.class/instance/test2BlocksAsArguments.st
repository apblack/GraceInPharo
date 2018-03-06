tests-Requests
test2BlocksAsArguments
	self good: #Request as: #ImplicitRequest  parse: 'assert {
            mt.errorsToBeRerun := true
} shouldRaise (NoSuchMethod)'