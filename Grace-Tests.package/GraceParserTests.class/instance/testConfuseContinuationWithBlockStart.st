tests - indentation
testConfuseContinuationWithBlockStart
	| l1 l2 |
	l1 := self tokensFrom: 'if ((ann.kind == "identifier") && {
    ann.value == annName }) then {
    return 17
}'.
	l2 := self tokensFrom: 'if ((ann.kind == "identifier") && { ann.value == annName }) then {
    return 17
}'.
	self assert: l1 hasSameTokensAs: l2