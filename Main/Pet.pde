class Pet {

  String name;
  float x;
  float y;

  float happiness;

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
    noFill();
    strokeWeight(5);
    if(happiness > 50) {
    arc(x, y+40, 20, 20, PI-PI*happiness/100, PI-PI+PI*happiness/100, OPEN);
    }
    if(happiness < 50) {
    arc(x, y+60, 20, 20, PI+(happiness/50)*(PI/2), TWO_PI-(happiness/50)*(PI/2), OPEN);
    }
    strokeWeight(1);
  }

  void update() {
    happiness -= 0.05;
    if (happiness < 0) {
      happiness = 0;
    }
  }
  
  void pat() {
    happiness += 5;
    if (happiness > 100) {
      happiness = 100;
    }
  }
}
