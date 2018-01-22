minigrace good
test152_inheritsReturnObject
	self good: #Module parse: 'trait a {
    method map { 
        object {
            method asString { "a map" }
        }
    }
}

method m {
    object {
        use a
    }
}

print "m.map = {m.map}"
print "a.map = {a.map}"
'
