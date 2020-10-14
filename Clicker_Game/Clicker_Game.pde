import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme, coin, bump, miss, gameover;
float angle;
int mode;
PFont zombie;
int score, lives, highScore;
float sliderX;
float thickness;
float imageUsed;
boolean imgOn;
PImage ball, hoop, gsw, nba, ball1;
PImage ballS;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  x=100;
  y=100;
  d=50;
  vx=3;
  vy=4;
  score=0;
  highScore=0;
  lives=3;
  sliderX=100;
  thickness=100;
  ballS= loadImage("ball.png");
  //images
  ball= loadImage("ball.png");
  hoop= loadImage("hoop.png");
  gsw = loadImage("gsw.png");
  zombie=createFont("zombie.ttf", 200);
  nba = loadImage("nba.png");
  ball1 = loadImage("color.png");
  //sound
  minim = new Minim(this);
  theme = minim.loadFile("mario.mp3");
  bump = minim.loadFile("boing.mp3");
  miss=  minim.loadFile("oof.mp3");
  gameover= minim.loadFile("gameover.mp3");
  coin =  minim.loadFile("coin.mp3");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}

void rectButton (int x, int y, int w, int h) {
  if (mouseX> x && mouseX < x+w && mouseY>y && mouseY<y+w) {
    strokeWeight(5);
    stroke(255, 0, 0);
  } else {
    stroke(1);
    strokeWeight(1);
  }
  rect(x, y, w, h);
}

void circleButton (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    strokeWeight(5);
    stroke(255, 0, 0);
  } else {
    stroke(1);
    strokeWeight(1);
  }
  ellipse(x, y, r, r);
}
