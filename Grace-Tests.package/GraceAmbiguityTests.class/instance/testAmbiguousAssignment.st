tests
testAmbiguousAssignment

	self bad: #Module parse: '
class superTest {
    var s
}
class test {
    inherit superTest
    method foo(w) { s := s + 1 }   // the s on the lhs is ambiguous
}
var s  // this is outer.s 

'.