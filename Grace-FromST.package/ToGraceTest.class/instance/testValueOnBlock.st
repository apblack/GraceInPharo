tests
testValueOnBlock
	self assertMethod: Collection >> #do:separatedBy: inGraceIs: 'method do (elementBlock) separatedBy (separatorBlock) {
    // Evaluate the elementBlock for all elements in the receiver,
    // and evaluate the separatorBlock between.
    var beforeFirst
    beforeFirst := true
    do { each →
        if (beforeFirst) then {
            beforeFirst := false
        } else {
            separatorBlock.apply
        }
        elementBlock.apply (each)
    }
}
'