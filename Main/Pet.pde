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
  
  void display() {
    circle(x, y, 200);
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
