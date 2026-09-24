void drawHomescreen () {
  image(bg, 0, 0);
  pet.update();
  pet.display();
  highlightScreenshifter(mouseX, mouseY);
}

void drawMathgame () {
  fill(0);
  rect(0, 0, width, height);
}
