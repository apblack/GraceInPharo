tests
testWhileFalseWithArg
	self assertMethod: GraceScanner >> #basedRadixNumeral inGraceIs: 'method basedRadixNumeral {
    // a numeral of the form 16x34aE has been recognized. Check that the digits are less than the radix.
    var base
    def wholeNumeral = outputStream.contents
    base := wholeNumeral.asNumber
    if ((base == 0)) then {
        base := 16
    }
    def str = wholeNumeral.readStream
    while {
        str.next.isDigit
    } do {

    }
    while {
        str.atEnd.not
    } do {
        checkDigit (str.next) lessThan (base)
    }
    return createTokenFor (wholeNumeral)
}
' 