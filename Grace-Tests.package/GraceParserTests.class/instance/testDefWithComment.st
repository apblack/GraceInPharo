tests - indentation
testDefWithComment
	| l1 |
	l1 := self tokensFrom: 'method test(opSym) {
    def rnm = if (opSym == "+") then { 
    // this comment shoudl not change anything
        "sum" 
    } else { "opresult" }
}'.
	l1 do: [ :tok | 
		self deny: (tok ids includes: tok scanner newlineId) description: 'found newline token']
