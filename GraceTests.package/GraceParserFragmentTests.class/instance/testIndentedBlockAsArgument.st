tests-Requests
testIndentedBlockAsArgument
	self good: #Request as: #ImplicitRequest  parse: 'repeat 3 times {
    forward 20
    right 120
}'