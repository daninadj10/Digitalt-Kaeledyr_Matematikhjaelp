class HeartParticle extends Particle {
  float rotation;

  HeartParticle(float x, float y) {
    super(x, y);
    rotation = random(-PI/7, PI/7);
  }

  @Override
    void display() {
    fill(230, 70, 110, alpha);
    noStroke();
    pushMatrix();
    translate(x, y);
    rotate(rotation);
    beginShape();
    vertex(0, -2.5); // indhakket øverst
    bezierVertex(-6, -10, -12.5, -4, 0, 7);
    bezierVertex(12.5, -4, 6, -10, 0, -2.5);
    endShape(CLOSE);
    popMatrix();
  }
}
