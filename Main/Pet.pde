

class Pet {

  String name;
  float x;
  float y;
  float size = 200;
  private float happiness;
  Eye leftEye;
  Eye rightEye;



  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.happiness = 100;
    leftEye = new Eye(x-40, y-40, 40);
    rightEye = new Eye(x+40, y-40, 40);
  }

  void display() {
    noStroke();
    fill(#726C74, 50);
    ellipse(x, y+size/2-10, size*0.8, size*0.3);
    fill(#A74BC4);
    circle(x, y, size);


    drawGlasses();

    drawMouth();
    leftEye.display();
    rightEye.display();
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
