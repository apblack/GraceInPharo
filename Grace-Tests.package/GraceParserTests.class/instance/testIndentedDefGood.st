tests - indentation
testIndentedDefGood
	"the end of the then block does return to the correct indetation"

	self good: #Module parse: 'method test(opSym) {
    def rnm = if (opSym == "+") then { "sum"
    } else { "opresult"
    }
}
'