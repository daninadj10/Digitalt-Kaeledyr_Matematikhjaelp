Pet pet;
int screen;
PImage bg;
ArrayList<Activity> activities = new ArrayList<Activity>();
ArrayList<Button> buttons = new ArrayList<Button>();


void setup() {
  size(800, 600, P2D);
  surface.setLocation(displayWidth / 2 - width / 2, displayHeight / 2 - height / 2);
  pixelDensity(2);

  bg = loadImage("Background.png");
  bg.resize(width, height);
  image(bg, 0, 0);
  screen = 0;

  activities.add(new Activity("pat", 5));
  buttons.add(new Button(activities.get(0)));
  pet = new Pet("Hjælper", width/2, 320);

  println(bg.width + " x " + bg.height);
}

void draw() {
  if (screen == 0) drawHomescreen();
  if (screen == 1) drawMathgame();

  println(frameRate);
}

void mousePressed() {
  if (pet.isClicked(mouseX, mouseY)) {
    buttons.get(0).click(pet);
  }
  if (screen == 0) screenShift(mouseX, mouseY);
}
