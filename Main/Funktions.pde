
void screenShift(float x, float y) {
  float sc1x = 624;
  float sc1y = 85;
  float sc2y = 89;
  float sc3y = 92;
  float sc4y = 94;
  if (constrain(x, sc1x, sc1x+21) == x && constrain(y, sc1y, sc1y+84) == y) screen = 1;
  if (constrain(x, sc1x+22, sc1x+43) == x && constrain(y, sc2y, sc1y+84) == y) screen = 2;
  if (constrain(x, 668, 689) == x && constrain(y, sc3y, sc3y+77) == y) screen = 3;
  if (constrain(x, sc1x+66, sc1x+87) == x && constrain(y, sc4y, sc4y+73) == y) screen = 4;
}

void highlightScreenshifter(float x, float y) {
  float sc1x = 624;
  float sc1y = 85;
  float sc2y = 89;
  float sc3y = 92;
  float sc4y = 94;
  if (constrain(x, sc1x, sc1x+21) == x && constrain(y, sc1y, sc1y+84) == y) {
    noStroke();
    fill(255, 255, 255, 90);
    rect(sc1x, sc1y, 21, 84);
  }
  if (constrain(x, sc1x+22, sc1x+43) == x && constrain(y, sc2y, sc1y+84) == y) {
    noStroke();
    fill(255, 255, 255, 90);
    rect(sc1x+22, sc2y, 21, 80);
  }
  if (constrain(x, 668, 689) == x && constrain(y, sc3y, sc3y+77) == y) {
    noStroke();
    fill(255, 255, 255, 90);
    rect(sc1x+44, sc3y, 21, 77);
  }
  if (constrain(x, sc1x+66, sc1x+87) == x && constrain(y, sc4y, sc4y+73) == y) {
    noStroke();
    fill(255, 255, 255, 90);
    rect(sc1x+66, sc4y, 21, 73);
  }
}
