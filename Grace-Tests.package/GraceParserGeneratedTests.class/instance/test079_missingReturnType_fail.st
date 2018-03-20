minigrace bad
test079_missingReturnType_fail
	self bad: #Module parse: 'method test(a : String) -> {
    return a
}

print(test("Hello"))
'
