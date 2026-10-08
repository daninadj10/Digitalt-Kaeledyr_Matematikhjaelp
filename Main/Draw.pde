void drawHomescreen () {
  image(bg, 0, 0);
  pet.update();
  pet.display();
  highlightScreenshifter(mouseX, mouseY);
  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle p = particles.get(i);

    p.update();
    p.display();

    if (p.isDead()) {
      particles.remove(i);
    }
  }
}

void drawMathgame () {
  fill(0);
  rect(0, 0, width, height);
}
