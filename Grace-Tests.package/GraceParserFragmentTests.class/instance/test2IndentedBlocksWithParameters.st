tests-indentation
test2IndentedBlocksWithParameters
	self good: #Request as: #ImplicitRequest parse: 'one { p1 →
    block1
} two { p3, p4, p5 → 
    block2
}' 
	