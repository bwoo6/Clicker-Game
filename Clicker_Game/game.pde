float vx, vy;
float x, y, d;

void game() {
  textFont(zombie);
  background(0);
  textSize(30);
  fill(255);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  fill(255);
  imageMode(CENTER);
  gsw.resize(400, 400);
  image(gsw, 400, 400);
  strokeWeight(0);
  ellipse(x, y, d, d);
  image(ballS, x, y, d, d);
  stroke(0);
  fill(255);

  //pause
  rectButton(50, 50, 50, 50);
  fill(0);
  rect(60, 60, 10, 30);
  rect(80, 60, 10, 30);

  x = x +vx;
  y=y+vy; 
  if (x>=width-d/2 || x<=0+d/2) {
    d=d*1;
    vx = vx * -1;
    bump.rewind();
    bump.play();
  }
  if (y>=height-d/2 || y<=0+d/2) {
    vy = vy * -1;
    bump.rewind();
    bump.play();
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) <d) {
    score = score+1;
    vx=vx*1.02;
    vy=vy*1.02;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100)<d) {
    mode= PAUSE;
  } else {
    lives = lives - 1;
    miss.rewind();
    miss.play();
    if (lives==0) mode=GAMEOVER;
  }
}
