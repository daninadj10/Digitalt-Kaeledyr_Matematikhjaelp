
void screenShift(float x, float y) {
  if (constrain(x, 624, 645) == x && constrain(y, 75, 149) == y) screen = 1;
  if (constrain(x, 646, 667) == x && constrain(y, 79, 149) == y) screen = 2;
  if (constrain(x, 668, 689) == x && constrain(y, 82, 149) == y) screen = 3;
  if (constrain(x, 690, 711) == x && constrain(y, 84, 147) == y) screen = 4;
  }

  void highlightScreenshifter(float x, float y) {
    if (constrain(x, 624, 645) == x && constrain(y, 75, 149) == y) {
      noStroke();
      fill(255, 255, 255, 90);
      rect(624, 75, 21, 74);
    }
    if (constrain(x, 646, 667) == x && constrain(y, 79, 149) == y) {
      noStroke();
      fill(255, 255, 255, 90);
      rect(646, 79, 21, 70);
    }
    if (constrain(x, 668, 689) == x && constrain(y, 82, 149) == y) {
      noStroke();
      fill(255, 255, 255, 90);
      rect(668, 82, 21, 67);
    }
    if (constrain(x, 690, 711) == x && constrain(y, 84, 147) == y) {
      noStroke();
      fill(255, 255, 255, 90);
      rect(690, 84, 21, 63);
    }
  }
