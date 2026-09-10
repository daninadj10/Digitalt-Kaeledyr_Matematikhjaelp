Pet pet;

void setup() {
  size(600, 400);
  
  pet = new Pet("Hjælper", 200, 200);

}

void draw() {
  pet.display();
}
