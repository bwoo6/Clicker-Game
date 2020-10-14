void intro() {
  theme.rewind();
  theme.play();
  textFont(zombie);
  background(50);
  imageMode(CORNER);
  hoop.resize(150, 150);
  image(hoop, 325, 150);
  image(nba, 250, 250);
  fill(0, 0, 109);
  rectButton(100, 500, 200, 100);

  fill(255, 192, 203);
  textSize(30);
  text("START", 200, 545);
  fill(0, 0, 109);
  rectButton(500, 500, 200, 100);

  fill(255, 192, 203);
  text("OPTIONS", 600, 545);
}

void introClicks() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
  if (mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 600) {
    mode = OPTIONS;
  }
}
