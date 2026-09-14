Pet pet;
ArrayList<Activity> activities = new ArrayList<Activity>();
ArrayList<Button> buttons = new ArrayList<Button>();

void setup() {
  size(600, 400);
  activities.add(new Activity("pat", 5));
  buttons.add(new Button(activities.get(0)));
  pet = new Pet("Hjælper", 200, 200);
}

void draw() {
  pet.update();
  pet.display();
  println(pet.happiness);
}

void mousePressed() {
  if (dist(mouseX, mouseY, pet.x, pet.y) < 100) {
    buttons.get(0).click(pet);
  }
}
