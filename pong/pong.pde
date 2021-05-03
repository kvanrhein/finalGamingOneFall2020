Ball theBall;
Paddle thePaddle;
Block theBlocks[];
int points;
int lives;
PImage Background;
PImage Gameover;
PImage winner;
PImage start;
int x;


void setup() {
  start = loadImage("start.png");
  Background =loadImage("background.png");
  Gameover =loadImage("gameover.jpg");
  winner = loadImage("winner.png");
  int i = 0;
  lives = 4;
  size(800, 600);
  theBlocks = new Block[200];
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 70, #00ff00);
  }
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 50, #9842f5);
  }
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 30, #e9f542);
  }
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 10, #e81a1a);
  }
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 150, #00ff00);
  }
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 130, #9842f5);
  }
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 110, #e9f542);
  }
  for (int x = 0; x < width; x += 50) {
    theBlocks[i++] = new Block(x, 90, #e81a1a);
  }
  
  theBall = new Ball(300, 300, 6.1, -6);
  thePaddle = new Paddle(300, 300);
  
  
}

void draw() {
   
   
  
    background(Background);
  
    
   
  if(lives==0) {
    background(Gameover);
    return;
} 
  if(theBall.y == 10) {
    background(winner);
  }
  
  
  theBall.draw();
  thePaddle.draw();
  checkCollisions();
  text("lives "+lives,30,550);
  for (Block b : theBlocks) {
    if (b !=null) {
      b.draw();
      int side = b.hitBy(theBall);
      if (side == 1 || side == 3) {
        theBall.bounceVertical();
      }
    
      if (side == 2|| side == 4) {
        theBall.bounceHorizontal();
     
    }
  }
}      
  }





void checkCollisions() {
  int side;
  
  side = thePaddle.hitBy(theBall);
  
  if (side == 1 || side == 3) {
    theBall.bounceVertical();
  }
  
  if (side == 2|| side == 4) {
    theBall.bounceHorizontal();
  }
}

void mouseClicked() {
  if(theBall.dead == true) {
    theBall.dead = false;
    theBall.x = 300;
    theBall.y = 300;
}
  
  
  
}
