minigrace failing
test015_badElse_fail
	| result |
	result := self good: #Module parse: 'print
  "hello"

if (4>5) then {
    print "it''s wrong" }
else {
    print "it''s right"
}

'.
	self assert: result isA: #Module.
	self assert: result body items size = 3.
	result body items do: [ :each | self assert: each isA: #RequestWithArguments ].
	self assert: result body items first requestedName equals:'print(_)'.
	self assert: result body items second requestedName equals: 'if(_)then(_)'.
	self assert: result body items third requestedName equals: 'else(_)'
