minigrace bad
test022_elseifnothen_fail
	self bad: #Module parse: 'if (true) then {
    print("Here")
} elseif {true} {
    print("Failure.")
}
'
