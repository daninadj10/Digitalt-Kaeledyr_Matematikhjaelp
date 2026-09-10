class Pet {

  String name;
  float x;
  float y;

  float happiness;

  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
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
  }
}
