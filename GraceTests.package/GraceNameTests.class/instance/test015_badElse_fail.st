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
	self assert: result items size = 3.
	result items do: [ :each | self assert: each isA: #RequestWithArguments ].
	self assert: result items first requestedName equals:'print(_)'.
	self assert: result items second requestedName equals: 'if(_)then(_)'.
	self assert: result items third requestedName equals: 'else(_)'
