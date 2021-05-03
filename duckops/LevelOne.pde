class LevelOne {
  //instance variables
  int ducksKilled;
  Gun aGun;
  Duck ducks[]; 
  Bullet aBullet;
  PImage duckImage;
  PImage redImage;
  LevelOne() { 
    ducksKilled = 0;
    aGun=new Gun(400, 600);
    ducks=new Duck[4];
    duckImage=loadImage("duck1.png");
    redImage=loadImage("redDuck.png");
    for (int i=0; i<4; i++) {
      ducks[i] = new Duck(false, duckImage, i*150+50, 200, 2);
    }
    ducks[2].red=true;
    ducks[2].duck=redImage;
  }

  void draw() {
    background(0);
    aGun.draw();
    for (Duck d : ducks) {
      d.draw();
      if (aBullet != null) {
        if (d.hit(aBullet.x, aBullet.y)) {
           ducksKilled++;
           if(d.red==true){
            gameStage=5;
            gameOver=new GameOver();
           }
        }
      }
    }
    if ( aBullet != null)
      aBullet.draw();
    if (ducksKilled == 3) {
      gameStage = 2;
      levelTwo = new LevelTwo();
    }
  }

  void keyPressed() {
    //just go to levelTwo if key is pressed
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
