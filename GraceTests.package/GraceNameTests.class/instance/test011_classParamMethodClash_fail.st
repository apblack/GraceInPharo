minigrace failing
test011_classParamMethodClash_fail
	self bad: #Module parse: 'class test⟦W⟧(x:W) {
    method x⟦T⟧ {2}
    print(x)
}
test(7)
(1..10).do { n -> print(n) }
'
