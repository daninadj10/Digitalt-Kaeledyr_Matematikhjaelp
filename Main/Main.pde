Pet pet;
PImage bg;
ArrayList<Activity> activities = new ArrayList<Activity>();
ArrayList<Button> buttons = new ArrayList<Button>();


void setup() {
  size(800, 600, P2D);
  pixelDensity(displayDensity());

  bg = loadImage("Background.png");
  bg.resize(width, height);
  image(bg, 0, 0);


  activities.add(new Activity("pat", 5));
  buttons.add(new Button(activities.get(0)));
  pet = new Pet("Hjælper", width/2, 320);

  println(bg.width + " x " + bg.height);
}

void draw() {
  image(bg, 0, 0);
  pet.update();
  pet.display();

  println(frameRate);
}

void mousePressed() {
  if (pet.isClicked(mouseX, mouseY)) {
    buttons.get(0).click(pet);
  }
}
