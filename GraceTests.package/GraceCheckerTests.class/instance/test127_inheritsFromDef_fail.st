minigrace failing
test127_inheritsFromDef_fail
	self bad: #Module parse: 'def singluarObject = object {
    def foo is public = "OK"
    method bar { "OK" }
}

object {
    inherit singluarObject
    print(foo)
    print(bar)
}

'
