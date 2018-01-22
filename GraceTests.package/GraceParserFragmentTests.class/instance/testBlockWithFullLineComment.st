tests-Blocks
testBlockWithFullLineComment
	self good: #Block parse: '{
    // without this check, a bad implementation will loop forever
    oneToFive
}'