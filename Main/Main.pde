Pet pet;

void setup() {
  size(600, 400);

  pet = new Pet("Hjælper", 200, 200);
}

void draw() {
  pet.update();
  pet.display();
  println(pet.happiness);
}

void mousePressed() {
  if (dist(mouseX, mouseY, pet.x, pet.y) < 100) {
    pet.pat();
  }
}
