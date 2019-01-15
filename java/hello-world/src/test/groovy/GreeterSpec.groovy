import org.junit.Test

import spock.lang.Specification

class GreeterTest extends Specification{

  def greeter = new Greeter()

  void "test that greeter returns the correct greeting"(){
    when: "Greeter method greeting"
      String result = greeter.getGreeting()
    then:
      result == "Hello, World!"
  }

}
