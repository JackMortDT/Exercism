import spock.lang.Specification

class TwoferTest extends Specification{

    def twofer = new Twofer()

    void "no name given"(){
      given: "nothing"
        String name = null
      when:
        String expected = twofer.twofer(name)
      then:
        expected == "One for you, one for me."
    }

    void "a name given"(){
      given: "a name"
        String name = "Alice"
      when:
        String expected = twofer.twofer(name)
      then:
        expected == "One for Alice, one for me."
    }

    void "another name given"(){
      given: "a name"
        String name = "Bob"
      when:
        String expected = twofer.twofer(name)
      then:
        expected == "One for Bob, one for me."
    }

}
