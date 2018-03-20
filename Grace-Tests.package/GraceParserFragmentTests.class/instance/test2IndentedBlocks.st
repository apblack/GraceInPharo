tests-Requests
test2IndentedBlocks
	self good: #Request as: #ImplicitRequest parse: 'one { 
    block1
} two {
    block2
}' 
	