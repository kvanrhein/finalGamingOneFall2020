class GameWin {
  //instance variables
  PImage gamewin;
  GameWin() {  
    gamewin=loadImage("gamewin.png");
  }
  
  void draw() {
 image(gamewin,400,200);
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();    
  }
}
