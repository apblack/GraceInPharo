minigrace good
test128_required
	self good: #Module parse: 'dialect "minitest"

trait ab {
    method a { "a" }
    method b { "b" }
}

trait ac {
    method a is required
    method c { "c" }
}

class speedClass {
    var speed is public := 0
}

class velocity {
    inherit speedClass
    var direction is public
}

trait choiceOfUnits {
    method direction is required
    method direction:=(nu) is required
    method directionInDegrees { direction * 180 / π }
    method directionInDegrees:= (d) { direction := d / 180 * π }
    method directionInRadians { direction }
    method directionInRadians:=(nu) { direction := nu }
}

class convenientVelocity {
    inherit velocity        // supplies both direction and direction:=(_)
    use choiceOfUnits
}


class brokenVelocity {
    inherit speedClass      // does not supply direction or direction:=(_)
    use choiceOfUnits
}

class abac {
    use ab
    use ac
}

class acab {
    use ac
    use ab
}

testSuite {
    test "required method does not override inherited method" by {
        def v0 = convenientVelocity
        v0.speed := 10
        v0.directionInDegrees := 90
        assert (v0.directionInDegrees) shouldBe 90
        assert (v0.directionInRadians) shouldEqual 1.570796 within (10^(-6))
    }
    test "required method not supplied rasies exception" by {
        def v1 = brokenVelocity
        v1.speed := 10
        assert { v1.directionInDegrees := 90 }
            shouldRaise (ProgrammingError) mentioning "required method direction:=(_)"
        assert { v1.direction }
            shouldRaise (ProgrammingError) mentioning "not supplied"
    }
    test "ab + ac has a" by {
        def o = abac
        assert (o.a) shouldBe "a"
        assert (o.b) shouldBe "b"
        assert (o.c) shouldBe "c"
    }
    test "ac + ab has a" by {
        def o = acab
        assert (o.a) shouldBe "a"
        assert (o.b) shouldBe "b"
        assert (o.c) shouldBe "c"
    }
}
'
