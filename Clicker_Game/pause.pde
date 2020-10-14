void pause() {
  theme.pause();
  fill(255);
  textSize(80);
  text("PAUSE", 400, 400);
  rectButton(50, 50, 50, 50);
  fill(0);
  triangle(60,60,90,80,60,90);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) <50) {
    mode=GAME;
  }
}
