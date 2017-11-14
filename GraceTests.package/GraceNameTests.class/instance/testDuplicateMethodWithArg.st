tests
testDuplicateMethodWithArg
	self bad: #Module parse: 'def testObj = object {
    method a(x)  { print "OK" }
    method b(y)  {}
    method a(w)  {}     // should be an error
}

print(testObj.a)
'