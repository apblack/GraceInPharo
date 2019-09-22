tests
testValueColon
	self assertMethod: RBProgramNode >> #do: inGraceIs: 'method do (aBlock) {
    // Hacked to fit collection protocols
    aBlock.apply (self)
}
'