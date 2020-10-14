void gameover() {
  background(150,50,50);
  theme.pause();
  gameover.play();
  fill(0, 0, 109);
  rectButton(300, 500, 200, 100);
  fill(255, 192, 203);
  textSize(30);
  text("PLAY AGAIN", 400, 545);
  textSize(70);
  text("highscore:" +highScore,400,200);
  if(highScore < score) { highScore = score;}
}

void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) { 
    mode = INTRO;
    lives=3;
    score=0;
  }
} 
