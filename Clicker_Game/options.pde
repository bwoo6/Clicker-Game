void options() {
  theme.pause();
  background(5);
  fill(0, 0, 109);
  rectButton(500, 500, 200, 100);
  fill(255, 192, 203);
  text("DONE", 600, 545);

  rectButton(100, 100, 200, 200);
  rectButton(500, 100, 200, 200);
  imageMode(CENTER);
  ball.resize(150, 150);
  image (ball, 200, 200);
  ball1.resize(150, 150);
  image (ball1, 600, 200);
  stroke(255);
  strokeWeight(7);
  line(100, 400, 700, 400);
  strokeWeight(0);
  ellipse(sliderX, 400, 50, 50);
  ellipse(200, 600, d, d);
  image(ballS,200,600,d,d);
}   

void optionsClicks() {
  if (mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 600) {
    mode = INTRO;
  }
  if (mouseX > 100 && mouseX <300 && mouseY > 100 && mouseY < 300) {
    ballS=loadImage("ball.png");
  }
  if (mouseX > 500 && mouseX < 700 && mouseY > 100 && mouseY < 300) {
    ballS=loadImage("color.png");
  }
}

void controlSlider () {
  if (mouseX > 100&&mouseX<700&&mouseY>380&&mouseY <420) {
    sliderX = mouseX;
  }
  d = map(sliderX, 100, 700, 50, 200);
  strokeWeight(d);
}
