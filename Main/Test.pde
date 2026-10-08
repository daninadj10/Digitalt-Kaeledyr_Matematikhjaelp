void check(String testName, float expected, float actual) {
  if (expected == actual) {
    println("BESTÅET: " + testName);
  } else {
    println("FEJL: " + testName + " – forventet " + expected + ", fik " + actual);
  }
}

void runTests() {
  Pet pet = new Pet("Bobo", 300, 200);
  pet.changeHappiness(-100);  // energi er nu 0
  pet.changeHappiness(70);    // energi er nu 70

  pet.changeHappiness(20);
  check("T1: Ændr energi +20 ved 70", 90, pet.getHappiness());
}
