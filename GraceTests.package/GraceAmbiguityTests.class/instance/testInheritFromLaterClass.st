tests
testInheritFromLaterClass
	"this test checks that a correctly-inherits y from b, even though b inherits it from c, and the definitions of b and c will not hav ebeen processed by the reuse visitor when a's object constructor is processed."
	self good: #Module parse: 'def a = object {
    inherit b
    x
    y
    z
    method z { ... }
}

class b {
    inherit c
    method x { ... }
    y
}

class c {
    method y { ... }
    method z { ... }
}'