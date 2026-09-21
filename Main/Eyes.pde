class Eye {
  private float x, y;
  private int size;

  Eye(float x, float y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }


  void display() {
    float angle = atan2(mouseY-y, mouseX-x);
    float pupil = constrain(dist(mouseX, mouseY, x, y), 0, size/4);
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(0);
    ellipse(pupil, 0, size/2, size/2);
    popMatrix();
  }
}
