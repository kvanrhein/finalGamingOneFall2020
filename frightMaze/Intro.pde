class Intro {
  //instance variables
 // PImage u;
  Intro() {  
   // u = loadImage("titleCard.png");
  }
  
  void draw() {
    background(80);
    textSize(50);
    text("Untitled Maze Game",80 ,200);
    text(" To Start hit any key", 100, 500);
    text("Collect the key's to win", 30, 350);
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 2;
   levelOne = new LevelOne();     
  }
}
