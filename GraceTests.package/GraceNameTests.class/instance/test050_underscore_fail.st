minigrace failing
test050_underscore_fail
	| result var |
	result := self bad: #Module parse: 'var _ := 3
print(_)
'.