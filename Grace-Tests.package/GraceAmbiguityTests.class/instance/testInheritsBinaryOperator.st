tests
testInheritsBinaryOperator

	self good: #Module parse: 'class / (path) {
    method extension { return ".grace" }
}

class file {
    inherit outer / "/users/black/"
    method base { "example" }

    extension
}
'.