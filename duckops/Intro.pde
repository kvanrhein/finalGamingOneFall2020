class Intro {
  //instance variables
  PImage duckops;
  Intro() {  
  duckops=loadImage("duckops.png");  
  }
  
  void draw() {
    background(255);
    image(duckops,100,100);
    
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 1;
    levelOne = new LevelOne();     
  }
}
