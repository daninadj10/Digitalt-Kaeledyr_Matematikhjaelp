class Pet {

  String name;
  float x;
  float y;
  private float happiness;

  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.happiness = 100;
  }



  void eyeMovement() {
    float dirToMouseX;
    float dirToMouseY;
    dirToMouseX = 1;
    dirToMouseY = 1;
  }

  void display() {
    fill(100);
    circle(x, y, 200);
    fill(255);
    ellipse(x-40, y-40, 50, 35);
    ellipse(x+40, y-40, 50, 35);
    fill(0);
    circle(x-40, y-40, 20);
    circle(x+40, y-40, 20);

    drawGlasses();

    drawMouth();
  }

  void drawGlasses() {
    float glassesY = y - 39;
    
    // Briller
    stroke(0);
    strokeWeight(4);
    noFill();

    // Venstre bril
    ellipse(x - 40, glassesY, 70, 50);

    // Højre bril
    ellipse(x + 40, glassesY, 70, 50);

    // Bro
    line(x - 5, glassesY, x + 5, glassesY);

    // Stænger
    line(x - 75, glassesY - 5, x - 90, glassesY - 15);
    line(x + 75, glassesY - 5, x + 90, glassesY - 15);
  }

  void drawMouth() {
    noFill();
    strokeWeight(5);
    if (happiness > 50) {
      arc(x, y+40, 50, 20, 0.8*PI-(0.8*PI*happiness)/100, 0.2*PI+0.8*PI*happiness/100, OPEN);
    }
    if (happiness < 50) {
      arc(x, y+60, 50, 20, PI+(0.8*PI*happiness)/100, TWO_PI-(0.8*PI*happiness)/100, OPEN);
    }
    strokeWeight(1);
  }

  void update() {
    happiness -= 0.05;
    if (happiness < 0) {
      happiness = 0;
    }
  }

  void changeHappiness(float amount) {
    happiness += amount;
    happiness = constrain(happiness, 0, 100);
  }
}
