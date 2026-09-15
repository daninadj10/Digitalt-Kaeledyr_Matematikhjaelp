Pet pet;
PImage background;
ArrayList<Activity> activities = new ArrayList<Activity>();
ArrayList<Button> buttons = new ArrayList<Button>();

void setup() {
  size(800, 600);
  
  background = loadImage("Background.png");
  background.resize(width, height);
  
  image(background, 0, 0);
  
  activities.add(new Activity("pat", 5));
  buttons.add(new Button(activities.get(0)));
  pet = new Pet("Hjælper", width/2, 320);
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
