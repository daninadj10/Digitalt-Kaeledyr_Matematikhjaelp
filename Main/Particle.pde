class Particle {
  float x;
  float y;
  float vx;
  float vy;
  float alpha;

  Particle(float x, float y) {
    this.x = x;
    this.y = y;
    

    vx = random(-1, 1); 
    vy = random(-2.5, -0.5);
    alpha = 255;
  }

  void update() {
    x = x + vx;
    y = y + vy;
    alpha = alpha - 3;
  }

  void display() {
    noStroke();
    fill(120, alpha);
    circle(x, y, 12);
  }

  boolean isDead() {
    return alpha <= 0;
  }
}
