PL pl;
int wc;

class GameSceneTwo {
  //instance variables
  float x;
  float y;
  PImage diffImage, cheese;
  AudioPlayer winner;

  
  GameSceneTwo() {  
     x=500;
    y = 585;
     diffImage = loadImage("level2.jpg");
  timer = 100;
    wallColors = #000000;  
    pl = new PL(x,y);
  cheese = loadImage("cheeesee.jpg");
  winner = minim.loadFile("win sound.mp3");
    
  }
  
  void draw() {
    background(diffImage);
 
    textSize(15);
    cheese.resize(30,30);
    image(cheese, 100,10);
    text("Time Remaining: " + timer, 220, 16);
    pl.draw();
    
     if (frameCount % 60 == 0 && timer > 0) { // if the frameCount is divisible by 60, then a second has passed. it will stop at 0
    timer --;
    fill(0);
  }
  if (timer == 0) {
    gameStage = 4 ;
    gameOver = new GameOver();  
  }
  
    
  }
  
  void keyPressed() {
    pl.keyPressed();
  
    
   
    }
  }
  
  boolean touchingColorss(float x, float y, float radius, float targetColor) {
  float xc, yc;
  for (float r = 0; r < PI * 2; r += 0.1) {
    xc = cos(r) * radius + x;
    yc = sin(r) * radius + y;
    
    int pixelColor = get(int(xc), int(yc));
    if (pixelColor == targetColor) {
      return true;
    }
  }
  
  return false;
}

class PL {
  float x, y;
  PImage playerImage;
  float radius = 5;
  float speed = 5;
  
  PL (float x, float y) {
    playerImage = loadImage("mouse2.png");
    this.x = x;
    this.y = y;
    radius = 5;
    speed = 6;
  }
  
  void draw() {
    imageMode(CENTER);
    playerImage.resize(30,30);
    image(playerImage, x, y);
  }
  
  void keyPressed() {
    float oldx = x;
    float oldy = y;
    
    switch(key) {
      case 'a': 
        x -= speed;
      break;
      case 's': 
        y += speed;
      break;
      case 'w': 
        y -= speed;
      break;
      case 'd': 
        x += speed;
      break;
    }
    if(dist(x,y,100,10)<20){
    gameStage = 7;
    levelTwoComplete = new LevelTwoComplete();
    winner.cue(0);
    winner.play();
    }
    if (touchingColors(x, y, radius, wallColors)) {
      x = oldx;
      y = oldy;
    }
  }
}
