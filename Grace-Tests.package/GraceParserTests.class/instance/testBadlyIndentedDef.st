tests - indentation
testBadlyIndentedDef
	"the end of the then block does not return to the correct indentation"

	self bad: #Module parse: 'method test {
    def rnm = if (opSym == "+") then { "sum"
                } else { "opresult"
                }
}
'