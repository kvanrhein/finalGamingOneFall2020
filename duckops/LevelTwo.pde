class LevelTwo {
  //instance variables
  int cansKilled;
  Bullet aBullet;
  Gun aGun;
  Can cans[]; 
  PImage canImage;
  PImage redImage;
  LevelTwo() { 
    cansKilled = 0;
    aGun=new Gun(400, 600);
    cans=new Can[4];
    canImage=loadImage("can.png");
    redImage=loadImage("redDuck.png");
    for (int i=0; i<4; i++) {
      cans[i] = new Can(false, canImage, i*150+50, 200, 4);
    }
    cans[2].red=true;
    cans[2].can=redImage;
  }

  void draw() {
    background(0);
    aGun.draw();
    for (Can d : cans) {
      d.draw();

      if (aBullet != null) {
        if (d.hit(aBullet.x, aBullet.y)) {
          cansKilled++;
          if (d.red==true) {
            gameStage=5;
            gameOver=new GameOver();
          }
        }
      }
    }
    if ( aBullet != null)
      aBullet.draw();
    if (cansKilled == 3) {
      gameStage = 3;
      levelThree = new LevelThree();
    }
  }


  void keyPressed() {
    //Actually decide the next level based on user input


    if (key=='d') {
      aGun.angle+=.1;
    }
    if (key=='a') {
      aGun.angle-=.1;
    }
    if (key==' ') {
      aBullet= new Bullet(400, 600, -cos(aGun.angle+PI/2)*10, -sin(aGun.angle+PI/2)*10);
    }
  }
}
