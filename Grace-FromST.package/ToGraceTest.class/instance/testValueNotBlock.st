tests
testValueNotBlock
	self assertMethod: RBKeywordToken >> #isPrimitiveKeyword inGraceIs: 'method isPrimitiveKeyword {
    return (value == "primitive:")
}
'