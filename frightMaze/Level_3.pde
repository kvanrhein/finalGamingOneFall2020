class LevelThree {
  //instance variables
  int squarePosX;
  int squarePosY;
  int squareSize = 50;
  float powerX, powerY;
  boolean powerEaten;
  int points = 0;
  Wall walls[];
  Skeleton s, s1, s2, s3, s4, s5, s6,s7;
  PImage skeletonImg;
  Player p;
  Key k, k1,k2,k3;

  LevelThree() {  
    squarePosX = 0;
    squarePosY = 0;
    powerX = 12;
    powerY = 2;
    powerEaten = false;
    walls = new Wall[400];
    buildWalls();
    s = new Skeleton(3, 3, "skeleton.png");
    s1 = new Skeleton(6, 13, "skeleton.png");
    s2 = new Skeleton(5, 10, "skeleton.png");
    s3 = new Skeleton(9, 6, "skeleton.png");
    s4 = new Skeleton(0, 7, "skeleton.png"); 
    s5 = new Skeleton(10, 3, "skeleton.png");
    s6 = new Skeleton(11, 9, "skeleton.png");
    s7 = new Skeleton(15, 0, "skeleton.png");
    p = new Player(1, 1, "Player.png");
    k = new Key(5, 7, "key.png");
    k1 = new Key(10, 0, "key.png");
    k2 = new Key(0, 11, "key.png");
    k3 = new Key(1, 2, "key.png");
  }

  void draw() {
    background(90);
    background(90);
    drawGrid();
    if (p.x== k.x && p.y == k.y) {
      // points++;
      // p.x = int(random(0, 16));
      // p.y = int(random(0, 12));
      gameStage = 7;
      level3Complete = new Level3Complete();
      println("switch to level Boss");
    }
    if (p.x == s.x && p.y == s.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      
    }
    if (p.x == s1.x && p.y == s1.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      
    }
    if (p.x == s2.x && p.y == s2.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
     
    }
    if (p.x == s3.x && p.y == s3.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      
    }
    if (p.x == s4.x && p.y == s4.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      
    }
    if (p.x == s5.x && p.y == s5.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
     
    }
    if (p.x == s6.x && p.y == s6.y) {
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
      
    }
    if (p.x == k3.x && p.y == k3.y) {
      
      k2.draw();
    }
    if (p.x == k2.x && p.y == k2.y) {
      k1.draw();
      
    }
    if (p.x == k1.x && p.y == k1.y) {
      s7.draw();
      
    }
    if (p.x == s7.x && p.y == s7.y) {
      k.x = int(random(0, 16));
      k.y = int(random(0, 12));
      p.x = int(random(0, 16));
      p.y = int(random(0, 12));
    }
    for (Wall w : walls) {
      if (w != null) {
        w.draw();
      }
    }
    s.draw();
    s1.draw();
    s2.draw();
    s3.draw();
    s4.draw();
    s5.draw();
    s6.draw();
    p.draw();
    k.draw();
    k3.draw();
    
  }

  void keyPressed() {
    //just go to levelTwo if key is pressed
    //gameStage = 2;
    // levelTwo = new LevelTwo();   
    if (key == CODED) {
      if (keyCode == UP) {
        if (isWall(p.x, p.y, true)) {
          println("can't move");
        } else {
          p.y--;
        }
      }    
      if (keyCode == DOWN) {
        if (isWall(p.x, p.y + 1, true)) {
          println("can't move");
        } else {
          p.y++;
        }
      }
      if (keyCode == LEFT) {
        if (isWall(p.x, p.y, false)) {
          println("can't move");
        } else {
          p.x--;
        }
      } 
      if (keyCode == RIGHT) {
        if (isWall(p.x + 1, p.y, false)) {
          println("can't move");
        } else {
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
    walls[w++] = new Wall(15, 5, false);
    walls[w++] = new Wall(14, 7, true);
    walls[w++] = new Wall(13, 6, false); 
    walls[w++] = new Wall(12, 5, true);
    walls[w++] = new Wall(12, 7, true);
    walls[w++] = new Wall(14, 6, false);
    walls[w++] = new Wall(14, 5, true);
    walls[w++] = new Wall(7, 2, true);
    walls[w++] = new Wall(8, 2, true);
    walls[w++] = new Wall(9, 2, true);
    walls[w++] = new Wall(1, 3, true);
    walls[w++] = new Wall(1, 3, false);
    walls[w++] = new Wall(5, 1, true);
    walls[w++] = new Wall(6, 1, true);
    walls[w++] = new Wall(7, 1, false); 
    walls[w++] = new Wall(8, 3, false);
    walls[w++] = new Wall(9, 3, true);
    walls[w++] = new Wall(10, 6, false);
    walls[w++] = new Wall(2, 8, false);
    walls[w++] = new Wall(4, 8, true);
    walls[w++] = new Wall(5, 8, true);
    walls[w++] = new Wall(12, 8, false); 
    walls[w++] = new Wall(14, 4, true); 
    walls[w++] = new Wall(12, 6, false);
    walls[w++] = new Wall(6, 3, true); 
    walls[w++] = new Wall(5, 7, true);
    walls[w++] = new Wall(6, 7, true);
    walls[w++] = new Wall(7, 9, false); 
    walls[w++] = new Wall(8, 9, true);
    walls[w++] = new Wall(9, 9, true);
    walls[w++] = new Wall(10, 8, false);
    walls[w++] = new Wall(11, 2, true);
    walls[w++] = new Wall(2, 7, true);
    walls[w++] = new Wall(3, 7, false);
    walls[w++] = new Wall(4, 7, true);
    walls[w++] = new Wall(5, 7, true);
    walls[w++] = new Wall(6, 7, false);
    walls[w++] = new Wall(5, 4, true);
    walls[w++] = new Wall(6, 1, true);
    walls[w++] = new Wall(7, 1, false); 
    walls[w++] = new Wall(15, 1, true);
    walls[w++] = new Wall(14, 1, false);
    walls[w++] = new Wall(13, 1, false);
    walls[w++] = new Wall(12, 1, false);
    walls[w++] = new Wall(2, 1, false);
    walls[w++] = new Wall(3, 1, true);
    walls[w++] = new Wall(1, 5, true);
    walls[w++] = new Wall(4, 1, true);
    walls[w++] = new Wall(5, 2, true);
    walls[w++] = new Wall(2, 8, false);
    walls[w++] = new Wall(6, 1, true);
    walls[w++] = new Wall(7, 1, true);
    walls[w++] = new Wall(8, 1, true);
    walls[w++] = new Wall(9, 1, true);
    walls[w++] = new Wall(10, 1, true);
    walls[w++] = new Wall(11, 1, true);  
    walls[w++] = new Wall(5, 5, false);
    walls[w++] = new Wall(6, 7, false);
    walls[w++] = new Wall(7, 6, true); 
    walls[w++] = new Wall(8, 5, false);
    walls[w++] = new Wall(9, 7, false);
    walls[w++] = new Wall(10, 6, true);
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
    walls[w++] = new Wall(10, 11, false);
    walls[w++] = new Wall(11, 4, false);
    walls[w++] = new Wall(2, 4, false);
    walls[w++] = new Wall(3, 4, true);
    walls[w++] = new Wall(4, 4, false);
    walls[w++] = new Wall(5, 4, false);
    walls[w++] = new Wall(6, 4, true); 
    walls[w++] = new Wall(0, 11, true); 
    walls[w++] = new Wall(1, 11, true); 
    walls[w++] = new Wall(2, 11, true); 
    walls[w++] = new Wall(3, 11, true); 
    walls[w++] = new Wall(12, 11, true); 
    walls[w++] = new Wall(13, 11, true); 
    walls[w++] = new Wall(14, 11, true); 
    walls[w++] = new Wall(15, 11, true); 
    walls[w++] = new Wall(15, 7, false); 
    walls[w++] = new Wall(15, 8, false); 
    walls[w++] = new Wall(15, 9, false); 
    walls[w++] = new Wall(15, 10, false); 
    walls[w++] = new Wall(1, 4, false); 
    walls[w++] = new Wall(1, 5, false); 
    walls[w++] = new Wall(1, 6, false); 
    walls[w++] = new Wall(1, 7, false); 
    walls[w++] = new Wall(1, 8, false); 
    walls[w++] = new Wall(1, 9, false); 
    walls[w++] = new Wall(1, 0, false); 
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
    walls[w++] = new Wall(3, 6, false); 
    walls[w++] = new Wall(10, 4, true); 
    walls[w++] = new Wall(11, 4, true); 
    walls[w++] = new Wall(12, 4, true); 
    walls[w++] = new Wall(13, 4, true); 
    walls[w++] = new Wall(14, 4, true); 
    walls[w++] = new Wall(15, 4, false); 
    walls[w++] = new Wall(10, 3, true); 
    walls[w++] = new Wall(11, 3, false); 
    walls[w++] = new Wall(12, 3, false); 
    walls[w++] = new Wall(13, 3, false); 
    walls[w++] = new Wall(14, 3, false); 
    walls[w++] = new Wall(15, 3, true); 
    walls[w++] = new Wall(12, 2, false); 
    walls[w++] = new Wall(13, 2, false); 
    walls[w++] = new Wall(14, 2, false); 
    walls[w++] = new Wall(15, 2, false); 
    walls[w++] = new Wall(9, 4, false); 
    walls[w++] = new Wall(7, 4, false); 
    walls[w++] = new Wall(8, 2, true); 
    walls[w++] = new Wall(8, 5, true); 
    walls[w++] = new Wall(8, 6, true); 
    walls[w++] = new Wall(8, 7, true); 
    walls[w++] = new Wall(8, 8, true); 
    walls[w++] = new Wall(8, 9, true); 
    walls[w++] = new Wall(8, 10, true); 
    walls[w++] = new Wall(14, 9, true); 
    walls[w++] = new Wall(9, 10, false); 
    walls[w++] = new Wall(10, 10, false); 
    walls[w++] = new Wall(11, 10, false); 
    walls[w++] = new Wall(12, 10, false); 
    walls[w++] = new Wall(13, 10, false); 
    walls[w++] = new Wall(14, 10, false); 
    walls[w++] = new Wall(10, 1, true); 
    walls[w++] = new Wall(9, 5, true); 
    walls[w++] = new Wall(9, 6, true); 
    walls[w++] = new Wall(10, 5, true); 
    walls[w++] = new Wall(12, 5, false); 
    walls[w++] = new Wall(10, 7, false); 
    walls[w++] = new Wall(11, 7, false); 
    walls[w++] = new Wall(12, 7, false); 
    walls[w++] = new Wall(13, 7, false); 
    walls[w++] = new Wall(14, 7, false); 
    walls[w++] = new Wall(10, 8, true); 
    walls[w++] = new Wall(10, 9, true); 
    walls[w++] = new Wall(12, 9, false); 
    walls[w++] = new Wall(13, 9, false);
  }
}
