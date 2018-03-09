tests
testInheritsUnaryOperator

	self good: #Module parse: 'class prefix / {
    method extension { return ".grace" }
}

class file {
    inherit / outer
    method base { "example" }

    extension
}
'.