Player ourPlayer;
PImage maze;
int wallColor ;

 class GameSceneOne {
  //instance variables
  int x, cheeseColor, radius;
  int y;
  int timer;
  PImage diffImage, cheese;
  AudioPlayer winner;

  
  GameSceneOne() {  
    radius = 20;
    x=560;
    y = 590;
    timer = 60;
     diffImage = loadImage("harder.jpg");
   wallColor = #000000;  
   cheeseColor = #000000;
  ourPlayer = new Player(x,y);
     cheese = loadImage("cheeesee.jpg");
     winner = minim.loadFile("win sound.mp3");
  }
  
  void draw() {
    background(diffImage);
    cheese.resize(40,40);
    image(cheese, 50,20);
    textSize(15);
    fill(0);
    text("     Use ASWD to move the mouse", 40, 15);
    text("Time Remaining: " + timer, 200, 35);
    ourPlayer.draw();
    
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
    
   ourPlayer.keyPressed();

  }
}

boolean touchingColor(float x, float y, float radius, float targetColor) {
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

class Player {
  float x, y;
  PImage playerImage;
  float radius = 6;
  float speed = 5;
  
  Player (float x, float y) {
    playerImage = loadImage("mouse2.png");
    this.x = x;
    this.y = y;
    radius = 6;
    speed = 5;
  }
  
  void draw() {
    imageMode(CENTER);
    //rotate(180));
    playerImage.resize(25,25);
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
        if (dist(x, y, 50,20)<15) {

    //just go to levelTwo if key is pressed
    gameStage = 5 ;
    levelOneComplete = new LevelOneComplete();  
    winner.cue(0);
    winner.play();
    } 
    
    if (touchingColor(x, y, radius, wallColor)) {
      x = oldx;
      y = oldy;
    }
  }
}
