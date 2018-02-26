minigrace failing
test015_badElse
	| result |
	result := self bad: #Module parse: 'print
  "hello"

if (4>5) then {
    print "it''s wrong" }
else {
    print "it''s right"
}

'
