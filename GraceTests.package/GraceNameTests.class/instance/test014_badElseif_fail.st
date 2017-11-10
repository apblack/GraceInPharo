minigrace failing
test014_badElseif_fail
	self bad: #Module parse: 'print
  "hello"

if (4>5) then {
    print "it''s wrong" } 
elseif { 6<7 } then { 
    print "6 < 7" }
else { print "what?" }

'
