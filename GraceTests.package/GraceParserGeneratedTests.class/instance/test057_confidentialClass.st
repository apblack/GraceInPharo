minigrace good
test057_confidentialClass
	self good: #Module parse: 'class a is confidential { }
def b = object  {
    inherit a
}
print(b)
'
