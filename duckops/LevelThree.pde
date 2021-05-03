class LevelThree {
  //instance variables
  Bullet aBullet;
  int platesKilled;
  Gun aGun;
  Plate plates[]; 
  PImage plateImage;
  PImage redImage;
  LevelThree() { 
    platesKilled = 0;
    aGun=new Gun(400, 600);
    plates=new Plate[4];
    plateImage=loadImage("plate.png");
    redImage=loadImage("redDuck.png");
    for (int i=0; i<4; i++) {
      plates[i] = new Plate(false, plateImage, i*150+50, 200, 6);
    }
    plates[2].red=true;
    plates[2].plate=redImage;
  }

  void draw() {
    background(0);
    aGun.draw();
    for (Plate d : plates) {
      d.draw();

      if (aBullet != null) {
        if (d.hit(aBullet.x, aBullet.y)) {
          platesKilled++;
          if (d.red==true) {
            gameStage=5;
            gameOver=new GameOver();
          }
        }
      }
    }
    if ( aBullet != null)
      aBullet.draw();
    if (platesKilled == 3) {
      gameStage = 4;
      gameWin=new GameWin();
    }
  }


  void keyPressed() {
   
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
