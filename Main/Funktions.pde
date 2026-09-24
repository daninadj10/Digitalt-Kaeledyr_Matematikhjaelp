
void screenShift(float x, float y) {
  if (constrain(x, 624, 645) == x && constrain(y, 75, 149) == y) screen = 1;
}

void highlightScreenshifter(float x, float y) {
  if (constrain(x, 624, 645) == x && constrain(y, 75, 149) == y) {
    noStroke();
    fill(255, 255, 255, 90);
    rect(624, 75, 21, 74);
  }
}
