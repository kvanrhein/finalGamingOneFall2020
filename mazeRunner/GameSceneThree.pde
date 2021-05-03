Players ourPlayers;
PImage mazes;
int wallColors;

class GameSceneThree {
  //instance variables
  int x, radius;
  int y, timer;
  PImage diffImage, cheese;
  AudioPlayer winner;

  
  GameSceneThree() {  
    radius = 6;
    x= 277;
    y = 585;
    timer = 120;
    wallColors = #000000;  
    ourPlayers = new Players(x,y);
    diffImage = loadImage("easy4.jpg");
    cheese = loadImage("cheese.png");
    winner = minim.loadFile("win sound.mp3");
  }
  
  void draw() {
    textSize(20);
    background(diffImage);
    cheese.resize(30,30);
    image(cheese, 300,300);
    text("Time Remaining: " + timer, 200, 35);
    ourPlayers.draw();
    
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
    
    ourPlayers.keyPressed();
    
   
  }
}

boolean touchingColors(float x, float y, float radius, float targetColor) {
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

class Players {
  float x, y;
  PImage playerImage;
  float radius = 7;
  float speed = 5;
  
  Players (float x, float y) {
    playerImage = loadImage("mouse2.png");
    this.x = x;
    this.y = y;
    radius = 7;
    speed = 5;
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
    if(dist(x,y,300,300)<20){
    gameStage = 3;
    gameWin = new GameWin();
    winner.cue(0);
    winner.play();
    }
    if (touchingColors(x, y, radius, wallColors)) {
      x = oldx;
      y = oldy;
    }
  }
}
