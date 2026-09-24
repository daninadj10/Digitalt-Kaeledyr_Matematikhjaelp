

class Pet {

  private String name;
  private float x;
  private float y;
  private float size = 200;
  private float happiness;
  Eye leftEye;
  Eye rightEye;



  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.happiness = 100;
    leftEye = new Eye(x-40, y-20, 40);
    rightEye = new Eye(x+40, y-20, 40);
  }

  void display() {
    pushMatrix();

    noStroke();
    translate(x, y);

    // Draw shadow
    fill(#726C74, 50);
    ellipse(0, size/2-10, size*0.8, size*0.2);

    // Draw body
    fill(#A74BC4);
    circle(0, 0, size);
    
    // Draw cheeks
    fill(#F27DE5, 150);
    ellipse(-size/3.5, 15, 30, 15);
    ellipse(size/3.5, 15, 30, 15);

    // Shadow on bottom of ball
    fill(#8E3FA8);
    noStroke();

    drawEdgeShadow();

    // Draw shiny bubbles
    rotate(PI/4);
    fill(#E2BAF0);
    ellipse(-size/2.3, 0, 12, 35);
    rotate(PI/10);
    ellipse(-size/2.3, 0, 8, 12);

    popMatrix();

    drawGlasses();
    drawMouth();
    leftEye.display();
    rightEye.display();
  }

  private void drawEdgeShadow() {
    pushMatrix();
    rotate(-PI/5);
    
    fill(#8E3FA8);

    float r = size / 2;

    // Hvor højt oppe spidserne skal være
    float endY = r * 0.2;

    // x-positionen for spidserne på boldens kant
    float endX = sqrt(r*r - endY*endY);

    // Den øverste bue skal være fladere
    float topY = r * 0.9;

    // Halv bredden af buen
    float halfWidth = endX;

    // Beregn radius på den store øverste bue
    float sagitta = topY - endY;
    float innerR = (halfWidth * halfWidth + sagitta * sagitta)
      / (2 * sagitta);

    // Centrum for den store cirkel
    float innerCenterY = topY - innerR;


    beginShape();

    // --------------------------------
    // 1. Den nederste bue
    //    følger boldens kant
    // --------------------------------

    float startAngle = atan2(endY, endX);
    float endAngle = PI - startAngle;

    for (float a = startAngle; a <= endAngle; a += 0.02) {
      float px = cos(a) * r;
      float py = sin(a) * r;
      vertex(px, py);
    }


    // --------------------------------
    // 2. Den øverste bue
    //    stor radius = flad kurve
    // --------------------------------

    float startInner = atan2(endY - innerCenterY, endX);
    float endInner = PI - startInner;

    for (float a = endInner; a >= startInner; a -= 0.02) {
      float px = cos(a) * innerR;
      float py = sin(a) * innerR + innerCenterY;
      vertex(px, py);
    }

    endShape(CLOSE);
    
    popMatrix();
  }

  private void drawGlasses() {
    float glassesY = y - 19;

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

  private void drawMouth() {
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

  boolean isClicked(float x, float y) {
    return dist(mouseX, mouseY, x, y) < size/2;
  }
}
