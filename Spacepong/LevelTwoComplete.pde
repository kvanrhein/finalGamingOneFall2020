//Pong pongs[];
//int pongCount;
import ddf.minim.*;
class LevelTwoComplete {
   AudioPlayer bounceSound;
    AudioPlayer crashSound;
  //instance variables
  int x,y;
  float x1,y1;
   float x1Velocity, y1Velocity;
   PImage room;
  LevelTwoComplete () {  
  bounceSound = minim.loadFile("pop.mp3");
  crashSound = minim.loadFile("explosion.mp3");
   room = loadImage("game.png");
   x=0;
   y=0;
   x1= 400;
   y1=400;
   x1Velocity = 6.1;
   y1Velocity= -12;
   //thePong = new Pong(300, 300, 6.1, -12);
   
   pongs = new Pong [2];
   pongs[0] = new Pong(1, -800, 6.1, -5);
   pongs[1] = new Pong(300, 300, 6.1, -9);
  
  }
 
   void draw() {
    background(room);
    fill(29,20,217);
    textSize(20);
    text("Level Two: Will you make it to Level 3?", 10, 30);
    textSize(50);
    text( "points:"+ points, 530,50);
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
  theLanet.draw();
  checkCollisions();
 
  if   (points>=20){
  gameStage = 7;
levelThree = new LevelThree();  
}
for ( Pong p : pongs){
   p.draw();
 }
 
}

void checkCollisions() {
  int side;
  for ( Pong p : pongs){
    side = theLanet.hitBy(p);
    
    if (side == 1 || side == 3) {
          p.bounceVertical();
          points= points +1;
          bounceSound.cue(0);
          bounceSound.play();
    }
    
    if (side == 2|| side == 4) {
        p.bounceHorizontal();
    }
  }
}
 
 void keyPressed() {
    //just go to levelTwo if key is pressed
   // gameStage = 7;
    //levelThree = new LevelThree(); 
    //if ( key== 'o'){
    //points = points + 1;
  //}
 }
  
}
 
