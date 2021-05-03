
class LevelTwo {
  //instance variables
  int squarePosX;
int squarePosY;
int squareSize = 50;
  float powerX, powerY;
  boolean powerEaten;
  int points = 0;
  Wall walls[];
  Skeleton s,s1,s2,s3,s4,s5,s6;
  PImage skeletonImg;
   Player p;
   Key k,k1;
   Minion m,m1,m2;
  
  LevelTwo() {  
    squarePosX = 0;
    squarePosY = 0;
    powerX = 12;
    powerY = 2;
    powerEaten = false;
    walls = new Wall[400];
    buildWalls();
    s = new Skeleton(3,3,"skeleton.png");
    s1 = new Skeleton(6,13,"skeleton.png");
    s2 = new Skeleton(5,10,"skeleton.png");
    s4 = new Skeleton(0,6,"skeleton.png");
    s5 = new Skeleton(14,3,"skeleton.png");
    s6 = new Skeleton(7,9,"skeleton.png");
    p = new Player(1,1,"Player.png");
    k = new Key(11,11,"key.png");
    k1 = new Key(15,10,"key.png");
    m = new Minion(6,6,"Minion.png");
    m1 = new Minion(11,8,"Minion.png");
    m2 = new Minion(2,2,"Minion.png");
    
  }
  
 void draw() {
   background(90);
   background(90);
  drawGrid();
  if (p.x== k.x && p.y == k.y){
   // points++;
   // powerX = int(random(0, 16));
   // powerY = int(random(0, 12));
    gameStage = 5;
   level2Complete = new Level2Complete();
    println("switch to level Three");
  }
  for (Wall w : walls) {
    if (w != null) {
      w.draw();
    }
  }
  if(p.x== k1.x && p.y == k1.y){
    k.draw();
    }
  if (p.x == s.x && p.y == s.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      k.x = int(random(0, 16));
      k.y = int(random(0, 12));
    }
    if (p.x == s1.x && p.y == s1.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      k.x = int(random(0, 16));
      k.y = int(random(0, 12));
    }
    if (p.x == s2.x && p.y == s2.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      k.x = int(random(0, 16));
      k.y = int(random(0, 12));
    }
    if (p.x == s4.x && p.y == s4.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      k.x = int(random(0, 16));
      k.y = int(random(0, 12));
    }
    if (p.x == s5.x && p.y == s5.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      k.x = int(random(0, 16));
      k.y = int(random(0, 12));
    }
    if (p.x == s6.x && p.y == s6.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      k.x = int(random(0, 16));
      k.y = int(random(0, 12));
    }
     if(p.x == m.x && p.y == m.y){
     gameStage = 10;
    gameOver = new GameOver();
   }
   if(p.x == m1.x && p.y == m1.y){
     gameStage = 10;
    gameOver = new GameOver();
   }
   if(p.x == m2.x && p.y == m2.y){
     gameStage = 10;
    gameOver = new GameOver();
   }
  k1.draw();
  s.draw();
  s1.draw();
  s2.draw();
  s4.draw();
  s5.draw();
  s6.draw();
  p.draw();
  m.draw();
  m1.draw();
  m2.draw();
 }
  
  void keyPressed() {
    //just go to levelTwo if key is pressed
    //gameStage = 2;
   // levelTwo = new LevelTwo();   
     if (key == CODED) {
    if (keyCode == UP) {
      if (isWall(p.x, p.y, true)) {
        println("can't move");
      }
      else {
        p.y--;
      }
    }    
    if (keyCode == DOWN) {
      if (isWall(p.x, p.y + 1, true)) {
        println("can't move");
      }
      else {
        p.y++;
      }
    }
    if (keyCode == LEFT) {
      if (isWall(p.x, p.y, false)) {
        println("can't move");
      }
      else {
        p.x--;
      }
    } 
    if (keyCode == RIGHT) {
      if (isWall(p.x + 1, p.y, false)) {
        println("can't move");
      }
      else {
        p.x++;
      }
    } 
  }
  }

void drawGrid() {
  stroke(120);
  strokeWeight(1);
  for (int i = 0; i < height/squareSize; i++) {
    line(0, i * squareSize, width, i * squareSize);
  }
  for (int j = 0; j < width/squareSize; j++) {
    line(j * squareSize, 0, j * squareSize, height);
  }
}




boolean isWall(int xPos, int yPos, boolean horizontal) {
  for (Wall w : walls) {
    if (w != null) {
      if (w.xPos == xPos && w.yPos == yPos && w.horizontal == horizontal) {
        return true;
      }
    }
  }
  return false;
}




void buildWalls() {
  int w = 0;
  walls[w++] = new Wall(5, 5, false);
  walls[w++] = new Wall(5, 7, false);
  walls[w++] = new Wall(6, 6, true);
  for (int i = 0; i < width / squareSize; i++) {
    walls[w++] = new Wall(i, 0, true);
    walls[w++] = new Wall(i, height/squareSize, true);
  }
  for (int i = 0; i < height / squareSize; i++) {
    walls[w++] = new Wall(0, i, false);
    walls[w++] = new Wall(width/squareSize, i, false);
  }  
  walls[w++] = new Wall(15, 5, true);
  walls[w++] = new Wall(14, 7, true);
  walls[w++] = new Wall(13, 6, false);
  walls[w++] = new Wall(12, 5, true);
  walls[w++] = new Wall(12, 7, true);
  walls[w++] = new Wall(14, 6, false);
  walls[w++] = new Wall(14, 5, true);
  walls[w++] = new Wall(7, 2, true);
  walls[w++] = new Wall(8, 2, false);
  walls[w++] = new Wall(9, 2, false);
  walls[w++] = new Wall(1, 3, true);
  walls[w++] = new Wall(1, 3, false);
  walls[w++] = new Wall(5, 1, true);
  walls[w++] = new Wall(6, 1, false);
  walls[w++] = new Wall(7, 1, false);
  walls[w++] = new Wall(8, 3, true);
  walls[w++] = new Wall(9, 3, true);
  walls[w++] = new Wall(10, 6, false);
  walls[w++] = new Wall(2, 8, false);
  walls[w++] = new Wall(4, 8, false);
  walls[w++] = new Wall(5, 8, true);
  walls[w++] = new Wall(12, 8, false);
  walls[w++] = new Wall(14, 4, true);
  walls[w++] = new Wall(12, 6, false);
  walls[w++] = new Wall(6, 3, true);
  walls[w++] = new Wall(5, 7, false);
  walls[w++] = new Wall(6, 7, true);
  walls[w++] = new Wall(7, 9, false);
  walls[w++] = new Wall(8, 9, true);
  walls[w++] = new Wall(9, 9, true);
  walls[w++] = new Wall(10, 8, false);
  walls[w++] = new Wall(11, 2, false);
  walls[w++] = new Wall(2, 7, true);
  walls[w++] = new Wall(3, 7,false);
  walls[w++] = new Wall(4, 7, true);
  walls[w++] = new Wall(5, 7, true);
  walls[w++] = new Wall(6, 7, false);
  walls[w++] = new Wall(5, 4, true);
  walls[w++] = new Wall(6, 1, true);
  walls[w++] = new Wall(7, 1, false);
  walls[w++] = new Wall(15, 1, true);
  walls[w++] = new Wall(14, 1, true);
  walls[w++] = new Wall(13, 4, false);
  walls[w++] = new Wall(12, 1, false);
  walls[w++] = new Wall(2, 1, false);
  walls[w++] = new Wall(3, 1, false);
  walls[w++] = new Wall(1, 5, false);
  walls[w++] = new Wall(4, 1, false);
  walls[w++] = new Wall(5, 2, false);
  walls[w++] = new Wall(2, 8, true);
  walls[w++] = new Wall(6, 1, true);
  walls[w++] = new Wall(7, 1, true);
  walls[w++] = new Wall(8, 1, true);
  walls[w++] = new Wall(9, 1, true);
  walls[w++] = new Wall(10, 1, true);
  walls[w++] = new Wall(11, 1, true);  
  walls[w++] = new Wall(5, 5, true);
  walls[w++] = new Wall(6, 7, false);
  walls[w++] = new Wall(7, 6, true);
  walls[w++] = new Wall(8, 5, false);
  walls[w++] = new Wall(9, 7, false);
  walls[w++] = new Wall(10, 6, false);
  walls[w++] = new Wall(11, 5, false);
  walls[w++] = new Wall(2, 2, false);
  walls[w++] = new Wall(3, 2, true);
  walls[w++] = new Wall(4, 2, false);
  walls[w++] = new Wall(5, 3, false);
  walls[w++] = new Wall(6, 3, true);
  walls[w++] = new Wall(5, 8, false);
  walls[w++] = new Wall(6, 8, false);
  walls[w++] = new Wall(7, 8, true);
  walls[w++] = new Wall(8, 8, false);
  walls[w++] = new Wall(9, 8, false);
  walls[w++] = new Wall(10, 8, true);
  walls[w++] = new Wall(11, 9, false);
  walls[w++] = new Wall(2, 9, false);
  walls[w++] = new Wall(2, 9, true);
  walls[w++] = new Wall(3, 9, true);
  walls[w++] = new Wall(4, 9, false);
  walls[w++] = new Wall(5, 9, false);
  walls[w++] = new Wall(6, 9, true);
  walls[w++] = new Wall(5, 5, false);
  walls[w++] = new Wall(6, 10, false);
  walls[w++] = new Wall(7, 10, true);
  walls[w++] = new Wall(9, 9, false);
  walls[w++] = new Wall(10, 8, true);
  walls[w++] = new Wall(11, 2, false);
  walls[w++] = new Wall(2, 7, false);
  walls[w++] = new Wall(3, 7, true);
  walls[w++] = new Wall(4, 7, false);
  walls[w++] = new Wall(5, 7, true);
  walls[w++] = new Wall(6, 7, true);
  walls[w++] = new Wall(5, 11, true);
  walls[w++] = new Wall(6, 11, true);
  walls[w++] = new Wall(7, 11, true);
  walls[w++] = new Wall(8, 11, true);
  walls[w++] = new Wall(9, 11, true);
  walls[w++] = new Wall(10, 11, true);
  walls[w++] = new Wall(11, 4, false);
  walls[w++] = new Wall(2, 5, false);
  walls[w++] = new Wall(3, 4, true);
  walls[w++] = new Wall(4, 4, false);
  walls[w++] = new Wall(5, 4, false);
  walls[w++] = new Wall(6, 4, true);
  walls[w++] = new Wall(0, 11, true);
  walls[w++] = new Wall(1, 11, false);
  walls[w++] = new Wall(2, 11, true);
  walls[w++] = new Wall(3, 11, true);
  walls[w++] = new Wall(12, 11, false);
  walls[w++] = new Wall(13, 11, true);
  walls[w++] = new Wall(14, 11, true);
  walls[w++] = new Wall(15, 11, true);
  walls[w++] = new Wall(15, 7, false);
  walls[w++] = new Wall(15, 8, false);
  walls[w++] = new Wall(15, 9, false);
  walls[w++] = new Wall(15, 10, false);
  walls[w++] = new Wall(1, 4, false);
  walls[w++] = new Wall(1, 5, false);
  walls[w++] = new Wall(1, 6, true);
  walls[w++] = new Wall(1, 7, false);
  walls[w++] = new Wall(1, 8, false);
  walls[w++] = new Wall(1, 9, false);
  walls[w++] = new Wall(1, 0, true);
  walls[w++] = new Wall(1, 1, false);
  walls[w++] = new Wall(2, 6, true);
  walls[w++] = new Wall(3, 6, true);
  walls[w++] = new Wall(4, 6, true);
  walls[w++] = new Wall(5, 5, true);
  walls[w++] = new Wall(6, 5, true);
  walls[w++] = new Wall(4, 10, true);
  walls[w++] = new Wall(3, 10, true);
  walls[w++] = new Wall(3, 2, false);
  walls[w++] = new Wall(3, 3, false);
  walls[w++] = new Wall(3, 4, false);
  walls[w++] = new Wall(3, 5, false);
  walls[w++] = new Wall(3, 6, true);
  walls[w++] = new Wall(10, 4, true);
  walls[w++] = new Wall(11, 4, true);
  walls[w++] = new Wall(12, 4, true);
  walls[w++] = new Wall(13, 4, false);
  walls[w++] = new Wall(14, 4, true);
  walls[w++] = new Wall(15, 4, true);
  walls[w++] = new Wall(10, 3, true);
  walls[w++] = new Wall(11, 3, true);
  walls[w++] = new Wall(12, 3, false);
  walls[w++] = new Wall(13, 3, true);
  walls[w++] = new Wall(14, 3, true);
  walls[w++] = new Wall(15, 3, false);
  walls[w++] = new Wall(12, 2, true);
  walls[w++] = new Wall(13, 2, false);
  walls[w++] = new Wall(14, 2, true);
  walls[w++] = new Wall(15, 2, true);
  walls[w++] = new Wall(9, 4, true);
  walls[w++] = new Wall(7, 4, true);
  walls[w++] = new Wall(8, 2, false);
  walls[w++] = new Wall(8, 5, false);
  walls[w++] = new Wall(8, 6, false);
  walls[w++] = new Wall(8, 7, true);
  walls[w++] = new Wall(8, 8, false);
  walls[w++] = new Wall(8, 9, false);
  walls[w++] = new Wall(8, 10, false);
  walls[w++] = new Wall(14, 9, false);
  walls[w++] = new Wall(9, 10, true);
  walls[w++] = new Wall(10, 10, true);
  walls[w++] = new Wall(11, 10, true);
  walls[w++] = new Wall(12, 10, true);
  walls[w++] = new Wall(13, 10, false);
  walls[w++] = new Wall(14, 10, false);
  walls[w++] = new Wall(10, 1, true);
  walls[w++] = new Wall(9, 5, true);
  walls[w++] = new Wall(9, 6, true);
  walls[w++] = new Wall(10, 5, true);
  walls[w++] = new Wall(12, 5, true);
  walls[w++] = new Wall(10, 7, true);
  walls[w++] = new Wall(11, 7, false);
  walls[w++] = new Wall(12, 7, false);
  walls[w++] = new Wall(13, 7, true);
  walls[w++] = new Wall(14, 7, false);
  walls[w++] = new Wall(10, 8, true);
  walls[w++] = new Wall(10, 9, true);
  walls[w++] = new Wall(12, 9, false);
  walls[w++] = new Wall(13, 9, false);
  walls[w++] = new Wall(3, 6, true);
}
}
