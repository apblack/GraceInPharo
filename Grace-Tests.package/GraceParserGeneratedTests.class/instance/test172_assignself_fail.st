minigrace bad
test172_assignself_fail
	self bad: #Module parse: 'class node {
    var left is public := self
    var right is public := self
    var parent is public := self


    method rrRotation{
      self := parent.right
      parent.right := self.left
      self.left := parent
      return self
    }
}

node.rrRotation
'
