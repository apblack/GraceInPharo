minigrace bad
test071_duplicateMethod_fail
	self bad: #Module parse: 'def testObj = object {
    method a { print "OK" }
    method b {}
    method a {}     // should be an error
}

print(testObj.a)
'
