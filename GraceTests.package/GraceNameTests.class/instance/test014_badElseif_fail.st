minigrace failing
test014_badElseif_fail
	| result |
	result := self good: #Module parse: 'print
  "hello"

if (4>5) then {
    print "it''s wrong" } 
elseif { 6<7 } then { 
    print "6 < 7" }
else { print "what?" }

'.
	self assert: result isA: #Module.
	self assert: result items size = 4.
	result items do: [ :each | self assert: each isA: #RequestWithArguments ].
	self assert: result items first requestedName equals:'print(_)'.
	self assert: result items second requestedName equals:'if(_)then(_)'.
	self assert: result items third requestedName equals: 'elseif(_)then(_)'.
	self assert: result items fourth requestedName equals: 'else(_)'
