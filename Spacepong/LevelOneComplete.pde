
import ddf.minim.*;
class LevelOneComplete {
  AudioPlayer bounceSound;
  AudioPlayer crashSound;
  //instance variables
  PImage room;
  Pong p ;
  Lanet l;
  LevelOneComplete () { 
   this.bounceSound = minim.loadFile("pop.mp3");
    crashSound = minim.loadFile("explosion.mp3");
    room = loadImage("game.png");
  thePong = new Pong(300, 300, 6.1, -5);
  points = 0;
  }
 
  void draw() {
    background(room);
    fill(242,238,10);
    textSize(20);
    text("Level One: Will you make it to Level 2?", 10, 30);
    textSize(50);
    text( "points:"+ points, 550,50);
   fill(255);
  rect(23,190,750,500);
  fill(0);
  rect(20,430,40,20);
  rect(80,430,40,20);
  rect(140,430,40,20);
  rect(200,430,40,20);
  rect(260,430,40,20);
  rect(320,430,40,20);
  rect(380,430,40,20);
  rect(440,430,40,20);
  rect(500,430,40,20);
  rect(560,430,40,20);
  rect(620,430,40,20);
  rect(680,430,40,20);
  rect(740,430,40,20);
 // fill(720,11,29);
  thePong.draw();
  theLanet.draw();
  checkCollisions();
 // m.draw();
 
  
if   (points>=10){
  gameStage = 2;
levelTwo = new LevelTwo();  
}
 
 
}

void checkCollisions() {
  int side;
  
  side = theLanet.hitBy(thePong);
  
  if (side == 1 || side == 3) {
    thePong.bounceVertical();
    points= points +1;
    bounceSound.cue(0);
    bounceSound.play();
  }
  
  if (side == 2|| side == 4) {
    thePong.bounceHorizontal();
  }
}

 void keyPressed() {
  
 }

  
 }
 
