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
  
  void display() {
    circle(x, y, 200);
  }
  
}
