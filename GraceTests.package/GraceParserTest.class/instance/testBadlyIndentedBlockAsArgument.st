tests-indentation
testBadlyIndentedBlockAsArgument
	self bad: #Request  parse: 'repeat 3 times {
     forward 20
    right 120
}'