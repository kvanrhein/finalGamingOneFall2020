class Wall {
  int xPos;
  int yPos;
  boolean horizontal;
  
  Wall(int xPos, int yPos, boolean horizontal) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.horizontal = horizontal;
  }
  
  void draw() {
    fill(0);
    noStroke();
    if (horizontal) {
      rect(xPos * squareSize - 3, yPos * squareSize - 3, squareSize + 6, 6, 3);
    }
    else {
      rect(xPos * squareSize - 3, yPos * squareSize - 3, 6, squareSize + 6, 3);      
    }
  }
}
//-------------------------------Class skeleton --------------------
class Skeleton {
  float x;
  float y;
  PImage img;
  
  Skeleton(float x,float y,String skeletonImg){
  this.x = x;
  this.y = y;
  this.img = loadImage(skeletonImg);
}

void draw() {
  imageMode(CENTER);
  image(this.img,x*squareSize+25, y*squareSize+25,48,48);
  
  
}

}
//----------Class Player-----------
class Player {
  int x;
  int y;
  PImage img;
  
  Player(int x, int y, String playerImg) {
    this.x = x;
    this.y = y;
    this.img = loadImage(playerImg);
    
    
  }
  void draw() {
  imageMode(CENTER);
  image(this.img,x*squareSize+32, y*squareSize+34,80,80);
  
  }
  
}
//----------Class Key-----------
class Key {
  int x;
  int y;
  PImage img;
  
  Key(int x, int y, String keyImg) {
    this.x = x;
    this.y = y;
    this.img = loadImage(keyImg);
    
    
  }
  void draw() {
  imageMode(CENTER);
  image(this.img,x*squareSize+32, y*squareSize+34,80,80);
  
  }
  
}
//----------Class Key-----------
class Minion {
  int x;
  int y;
  PImage img;
  
  Minion(int x, int y, String minionImg) {
    this.x = x;
    this.y = y;
    this.img = loadImage(minionImg);
    
    
  }
  void draw() {
  imageMode(CENTER);
  image(this.img,x*squareSize+32, y*squareSize+34,80,80);
  
  }
  
}
//-----------Lava--------
class Lava {
  int x;
  int y;
  
  
  Lava(int x, int y) {
    this.x = x;
    this.y = y;
     
  }
  void drawSquare() {
  warmSquare(x,y, 0.28);
}
void warmSquare(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  fill(227, 9, 9);
  stroke(227, 9, 9);
  rect(25, 25, 150, 150, 8);
  fill(240, 121, 10, 230);
  stroke(240, 121, 10);
  rect(25, 25, 100, 100, 8);
  fill(240, 240, 10, 230);
  stroke(240, 240, 10);
  rect(25, 25, 50, 50, 8);
  popMatrix();
}
  void draw() {
  drawSquare();
    this.y = this.y + 5;
    if(y > 810) {
      y = -1000;
    }
  }
  
}
//------------Slime-------------
