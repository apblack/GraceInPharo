tests - indentation
testContinuationsIgnored
	| l1 l2 |
	l1 := self tokensFrom: 'method findAnnotation(node, annName) {
    for (node.annotations) do {ann->
        if ((ann.kind == "identifier") && {
            ann.value == annName }) then {
            return object {
                inherit true
                def value is public = ann
            }
        }
    }
    false
}'.
	l2 := self tokensFrom: 'method findAnnotation(node, annName) {
    for (node.annotations) do {ann->
        if ((ann.kind == "identifier") && { ann.value == annName }) then {
            return object {
                inherit true
                def value is public = ann
            }
        }
    }
    false
}'.
	self assert: l1 hasSameTokensAs: l2