minigrace bad
test026_unicodewhitespace_fail
	self bad: #Module parse: '// The next line contains U+202F NARROW NO-BREAK SPACE
if (true) then {
    print("Here")
}
'
